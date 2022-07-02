.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "KeyguardUserSwitcherListView.java"


# instance fields
.field private mAnimating:Z

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;


# direct methods
.method public static synthetic $r8$lambda$TmINzvQcbZlD7JNH5-4Pil_GAJ4(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->lambda$updateVisibilities$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    .line 43
    invoke-direct/range {p0 .. p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v8, Lcom/android/settingslib/animation/AppearAnimationUtils;

    sget-object v7, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v3, 0xdc

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 49
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    sget-object v15, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    const-wide/16 v11, 0xdc

    const v13, 0x3e4ccccd    # 0.2f

    const v14, 0x3e4ccccd    # 0.2f

    move-object v9, v1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    return-void
.end method

.method private synthetic lambda$updateVisibilities$0()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    return-void
.end method


# virtual methods
.method isAnimating()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    return p0
.end method

.method removeLastView()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    return-void
.end method

.method replaceView(Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;I)V
    .locals 0

    .line 130
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 131
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method setDarkAmount(F)V
    .locals 4

    .line 62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 65
    instance-of v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    if-eqz v3, :cond_0

    .line 66
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->setDarkAmount(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateVisibilities(ZZ)V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string/jumbo v1, "updateVisibilities: open=%b animate=%b childCount=%d"

    .line 81
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUserSwitcherListView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 88
    new-array v1, v0, [Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_3

    .line 90
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    aput-object v5, v1, v4

    .line 91
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->clearAnimation()V

    if-nez v4, :cond_0

    .line 94
    aget-object v5, v1, v4

    invoke-virtual {v5, v3, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 96
    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_3

    .line 99
    :cond_0
    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 101
    aget-object v5, v1, v4

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v3

    :goto_2
    invoke-virtual {v5, v6, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 110
    aput-object p2, v1, v2

    .line 112
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 113
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 114
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    if-eqz p1, :cond_4

    .line 115
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    :goto_4
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;)V

    .line 116
    invoke-virtual {p1, v1, p2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
