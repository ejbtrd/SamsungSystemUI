.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusIconState"
.end annotation


# instance fields
.field distanceToViewEnd:F

.field public justAdded:Z

.field public mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field public shouldBlockAni:Z

.field public visibleState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    const/4 v0, 0x0

    .line 682
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 684
    const-class v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 685
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->getOperatorInfraMediator()Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    const/high16 v0, -0x40800000    # -1.0f

    .line 688
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 10

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 700
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float/2addr v0, v2

    .line 702
    instance-of v2, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v2, :cond_1

    return-void

    .line 705
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    const/4 v3, 0x1

    .line 710
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_6

    .line 711
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-nez v4, :cond_2

    goto :goto_1

    .line 717
    :cond_2
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-eq v1, v4, :cond_4

    .line 718
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-ne v1, v7, :cond_3

    move-object v1, v5

    move v3, v6

    goto :goto_2

    .line 723
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$100()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v1

    goto :goto_2

    :cond_4
    if-eq v4, v7, :cond_5

    .line 725
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    .line 727
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v5

    goto :goto_2

    .line 713
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 714
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 715
    invoke-interface {v2, v7}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    .line 716
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v1

    .line 730
    :goto_2
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SUBSCREEN_SIGNAL_INFO:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v7, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_SUB_SCREEN_SIGNAL_INFO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v8, -0x1

    new-array v9, v6, [Ljava/lang/Object;

    .line 731
    invoke-interface {v4, v7, v8, v9}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->shouldBlockAni:Z

    if-eqz v4, :cond_7

    move v3, v6

    goto :goto_3

    :cond_7
    move-object v5, v1

    .line 736
    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    if-eqz v5, :cond_8

    .line 738
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_4

    .line 740
    :cond_8
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 743
    :goto_4
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 744
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method
