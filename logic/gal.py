import numpy as np

from rich.console import Console
console = Console()


def print_blocks(array: np.ndarray):

    for i in range(8):
        for j in range(32):
            console.print(array[0, i, j].astype(int), end='')
            if (j + 1) % 4 == 0: console.print(' ', end='')
        console.print('')


def gal(logic: np.ndarray, inputs: np.ndarray):

    ins_inv = np.invert(inputs)
    ins = np.ravel(np.column_stack((inputs, ins_inv)))
    ins = ins[None, :].repeat(64, axis=0).reshape(8, 8, 32)

    gal = np.full(shape=(8, 8, 32), fill_value=True, dtype=bool)
    gal[logic] = ins[logic]

    ands = np.all(gal, axis=2)
    ors = np.any(ands[:, 1:], axis=1)
    invs = np.invert(ors[ands[:, 0]])

    console.print('Inputs')
    print_blocks(ins)

    console.print('Gate Logic')
    print_blocks(logic)

    console.print('Gate Array')
    print_blocks(gal)

    console.print('Outputs')
    console.print(invs.astype(int))

    return invs


if __name__ == "__main__":

    logic = np.full(shape=(8, 8, 32), fill_value=False, dtype=bool)
    inputs = np.full(shape=(16, ), fill_value=False, dtype=bool)

    logic[0, 1, 0] = True
    logic[0, 2:, 0:2] = True

    # inputs[0] = True

    gal(logic, inputs)
