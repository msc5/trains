import numpy as np
from rich.console import Console as rich_console


class Console (rich_console):

    def bits(self, array: np.ndarray, n: int = 8):
        for line in range(min(n, len(array))):
            msg = [str(a) for a in array[line].astype(int).tolist()]
            # msg[::4] = [' '] * len(msg[::4])
            msg = ''.join(msg)
            self.print(msg)


console = Console()

if __name__ == "__main__":

    logic = np.full(shape=(8, 8, 32), fill_value=False, dtype=bool)

    console.bits(logic[0])
