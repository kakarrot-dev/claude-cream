"""Claude Cream Python syntax fixture."""

from dataclasses import dataclass
from pathlib import Path
import re

PATTERN = re.compile(r"(?P<name>[a-z_]+)-(?P<version>\d+)")


@dataclass(frozen=True)
class ThemeAsset:
    name: str
    version: int = 2

    @property
    def filename(self) -> Path:
        return Path(f"{self.name}-{self.version}.json")


async def load_theme(asset: ThemeAsset | None) -> dict[str, object]:
    """Return a small typed payload for visual inspection."""
    if asset is None:
        raise ValueError("theme asset is required")
    match = PATTERN.fullmatch(f"{asset.name}-{asset.version}")
    return {"matched": bool(match), "path": asset.filename, "active": True}
