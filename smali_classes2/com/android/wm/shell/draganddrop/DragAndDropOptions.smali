.class public Lcom/android/wm/shell/draganddrop/DragAndDropOptions;
.super Ljava/lang/Object;
.source "DragAndDropOptions.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mIsFreeform:Z

.field private mIsFromHandler:Z

.field private mIsFullscreen:Z

.field private mIsResizable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDropTargetTextResId()I
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFromHandler:Z

    if-eqz v0, :cond_0

    .line 59
    sget p0, Lcom/android/wm/shell/R$string;->sidescreen_applist_switch_screen:I

    return p0

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    if-eqz v0, :cond_1

    .line 62
    sget p0, Lcom/android/wm/shell/R$string;->sidescreen_applist_popup_view:I

    return p0

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFullscreen:Z

    if-eqz v0, :cond_3

    .line 64
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsResizable:Z

    if-eqz p0, :cond_2

    .line 65
    sget p0, Lcom/android/wm/shell/R$string;->drop_now_to_open_in_fullscreen_view:I

    return p0

    .line 67
    :cond_2
    sget p0, Lcom/android/wm/shell/R$string;->dnd_applist_non_resizable_fullscreen:I

    return p0

    .line 70
    :cond_3
    sget p0, Lcom/android/wm/shell/R$string;->sidescreen_applist_open_app:I

    return p0
.end method

.method public isFreeform()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    return p0
.end method

.method public updateFrom(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V
    .locals 4

    .line 80
    iget v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 81
    :goto_1
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFullscreen:Z

    .line 82
    iget-boolean v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isResizable:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsResizable:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFromHandler:Z

    .line 84
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
