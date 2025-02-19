from dataclasses import dataclass
from talon import ui
from talon.types.point import Point2d
from typing import Callable, Any

@dataclass
class HudRichText:
    x: int
    y: int
    width: int
    height: int
    styles: list[str]
    text: str

class HudRichTextLine: list[HudRichText]

@dataclass
class HudChoice:
    image: str
    text: str
    data: Any
    selected: bool
    rect: ui.Rect
    
@dataclass
class HudChoices:
    choices: list[HudChoice]
    callback: Callable[[Any, Any], None]
    multiple: bool = False

@dataclass
class HudIcon:
    id: str
    image: str
    pos: Point2d
    radius: int
    callback: Callable[[Any], None]

@dataclass
class HudButton:
    image: str
    text: str
    rect: ui.Rect
    callback: Callable[[Any], None]

@dataclass
class HudPanelContent:
    topic: str
    title: str
    content: list[str]
    buttons: list[HudButton]
    published_at: float
    show: bool
    choices: HudChoices = None
    tags: list[str] = None

HOVER_VISIBILITY_ON = 1 # Only show the items when the region is hovered by the mouse
HOVER_VISIBILITY_OFF = 0 # Keep the screen region active regardless of mouse hover
HOVER_VISIBILITY_TRANSPARENT = -1 # Keep the screen region active, but if the mouse hovers over the drawn items, turn them inactive
    
@dataclass
class HudScreenRegion:
    topic: str
    title: str = None
    icon: str = None
    colour: str = None
    rect: ui.Rect = None
    point: Point2d = None
    hover_visibility: int = HOVER_VISIBILITY_OFF
    text_colour: str = None
    vertical_centered: bool = True

@dataclass
class HudWalkThroughStep:
    content: str = ''
    context_hint: str = ''
    tags: list[str] = None
    modes: list[str] = None
    app: str = ''
    voice_commands: list[str] = None
    restore_callback: Callable[[Any, Any], None] = None

@dataclass    
class HudWalkThrough:
    title: str
    steps: list[HudWalkThroughStep]