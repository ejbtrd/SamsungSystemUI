.class public Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;
.super Landroid/view/InputEventReceiver;
.source "FreeformTouchHandler.java"


# instance fields
.field private mFreeformContainerViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

.field private mIsMoving:Z

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->mTmpRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->mIsMoving:Z

    .line 39
    iput-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->mFreeformContainerViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 49
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->mIsMoving:Z

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    const-string p0, "FreeformTouchHandler"

    const-string p1, "!(inputEvent instanceof MotionEvent)"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_1
    check-cast p1, Landroid/view/MotionEvent;

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 61
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->mFreeformContainerViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->notifyIconPositionChanged(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method setMoving(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformTouchHandler;->mIsMoving:Z

    return-void
.end method
