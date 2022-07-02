.class Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
.super Landroid/widget/FrameLayout;
.source "CoverWindowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/CoverWindowDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCoverDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/CoverWindowDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 229
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p2, "window"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-static {p1, p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->access$002(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->access$100(Lcom/android/systemui/cover/CoverWindowDelegate;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->access$100(Lcom/android/systemui/cover/CoverWindowDelegate;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 238
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 240
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
