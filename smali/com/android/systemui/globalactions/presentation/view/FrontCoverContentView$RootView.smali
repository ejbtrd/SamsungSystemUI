.class Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;
.super Landroid/widget/FrameLayout;
.source "FrontCoverContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RootView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;Landroid/content/Context;)V
    .locals 1

    .line 266
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    .line 267
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-static {p1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$500(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 270
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 283
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 285
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$600(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 276
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$200(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onCancelDialog()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
