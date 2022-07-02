.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconState"
.end annotation


# instance fields
.field public clampedAppearAmount:F

.field public iconAppearAmount:F

.field public iconColor:I

.field public justAdded:Z

.field private justReplaced:Z

.field private final mCannedAnimationEndListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;

.field private final mXTranslationAnimationEndListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public visibleState:I


# direct methods
.method public static synthetic $r8$lambda$ILIgLvoUWlsxXlcjNUmbRBfeGEM(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Landroid/util/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->lambda$new$1(Landroid/util/Property;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dsZ3kNJ1AFsUxxeO-Al_gnrivIo(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Landroid/util/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->lambda$new$0(Landroid/util/Property;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Landroid/view/View;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 698
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 699
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/4 p1, 0x1

    .line 701
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    const/4 p1, 0x0

    .line 704
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 715
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    .line 716
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Ljava/util/function/Consumer;

    .line 725
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mXTranslationAnimationEndListener:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z
    .locals 0

    .line 696
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/util/Property;)V
    .locals 1

    .line 718
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    .line 719
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 720
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/util/Property;)V
    .locals 1

    .line 726
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 729
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 13

    .line 737
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 738
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 741
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-ne v2, v4, :cond_2

    .line 745
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    .line 746
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 747
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$200(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    const/4 v5, 0x0

    if-eqz v2, :cond_11

    .line 751
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v6, :cond_4

    goto :goto_2

    .line 760
    :cond_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 761
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    .line 763
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mXTranslationAnimationEndListener:Ljava/util/function/Consumer;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_3

    .line 752
    :cond_5
    :goto_2
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 753
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    .line 754
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 755
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 757
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$300()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    :goto_3
    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v1

    move-object v6, v5

    :goto_4
    if-nez v7, :cond_8

    .line 767
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v8

    if-ltz v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 768
    invoke-virtual {v8, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v9

    if-lt v8, v9, :cond_8

    .line 769
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v8

    if-ne v8, v3, :cond_7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v8, v3, :cond_8

    .line 771
    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    .line 773
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mXTranslationAnimationEndListener:Ljava/util/function/Consumer;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move v7, v4

    .line 777
    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    const-wide/16 v9, 0x64

    if-eqz v8, :cond_b

    .line 778
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 779
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 781
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$700()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v8

    .line 780
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 782
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 783
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$700()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 785
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->showsConversation()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 786
    sget-object v8, Lcom/android/systemui/animation/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

    goto :goto_5

    .line 788
    :cond_9
    sget-object v8, Lcom/android/systemui/animation/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 790
    :goto_5
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v11

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v11, v12, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 791
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Ljava/util/function/Consumer;

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    if-eqz v6, :cond_a

    .line 793
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 794
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 796
    :cond_a
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    .line 797
    invoke-virtual {v6, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 799
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$802(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    move v7, v4

    :cond_b
    if-nez v7, :cond_d

    .line 801
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v8

    if-ltz v8, :cond_d

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 802
    invoke-virtual {v8, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v11

    if-le v8, v11, :cond_d

    .line 803
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v8

    if-ne v8, v3, :cond_c

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v8, v3, :cond_d

    .line 805
    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v3

    .line 806
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 807
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 808
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 809
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    .line 810
    invoke-virtual {v6, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move v7, v4

    .line 813
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 814
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;

    move-result-object v3

    const-wide/16 v6, 0x0

    if-ne p1, v3, :cond_f

    .line 815
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    .line 817
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v8

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_e
    move-wide v9, v6

    .line 816
    :goto_6
    invoke-virtual {v3, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_8

    .line 819
    :cond_f
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    .line 821
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v8

    if-nez v8, :cond_10

    goto :goto_7

    :cond_10
    move-wide v9, v6

    .line 820
    :goto_7
    invoke-virtual {v3, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    :goto_8
    move-object v6, v3

    move v7, v4

    goto :goto_9

    :cond_11
    move v7, v1

    move-object v6, v5

    .line 826
    :cond_12
    :goto_9
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 828
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v8, :cond_13

    if-eqz v2, :cond_13

    move v2, v4

    goto :goto_a

    :cond_13
    move v2, v1

    :goto_a
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    if-eqz v7, :cond_14

    .line 835
    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_b

    .line 837
    :cond_14
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 839
    :goto_b
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 840
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_15

    goto :goto_c

    :cond_15
    move v4, v1

    .line 841
    :goto_c
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIsInShelf(Z)V

    .line 843
    :cond_16
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 844
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 845
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1

    .line 850
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 851
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 852
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_0
    return-void
.end method
