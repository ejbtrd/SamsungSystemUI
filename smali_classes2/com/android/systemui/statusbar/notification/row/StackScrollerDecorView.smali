.class public abstract Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "StackScrollerDecorView.java"


# instance fields
.field protected mContent:Landroid/view/View;

.field private mContentAnimating:Z

.field private final mContentVisibilityEndRunnable:Ljava/lang/Runnable;

.field private mContentVisible:Z

.field private mDuration:I

.field private mEndAlpha:F

.field private mIsSecondaryVisible:Z

.field private mIsVisible:Z

.field private mSecondaryAnimating:Z

.field protected mSecondaryView:Landroid/view/View;

.field private final mSecondaryVisibilityEndRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$21Mv0b99o81_XdU9BQA93CAVFTs(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZC1UHri925F0QdzJaL26Va9_-kg(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    const/16 p1, 0x104

    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mDuration:I

    .line 44
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    .line 54
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryVisibilityEndRunnable:Ljava/lang/Runnable;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 65
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mEndAlpha:F

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    if-nez v0, :cond_1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setContentVisible(ZZ)V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    if-eq v0, p1, :cond_0

    .line 108
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    .line 109
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 113
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    if-nez p1, :cond_1

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_3

    .line 206
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_STYLE_EMPTY_SHADE:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mEndAlpha:F

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_5

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_4

    .line 210
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    :cond_5
    if-eqz p2, :cond_6

    .line 216
    sget-object p3, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_6
    sget-object p3, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 217
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_7

    const-wide/16 p2, 0x3e8

    goto :goto_2

    .line 220
    :cond_7
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mDuration:I

    int-to-long p2, p0

    :goto_2
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 221
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method protected abstract findContentView()Landroid/view/View;
.end method

.method protected abstract findSecondaryView()Landroid/view/View;
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isSecondaryVisible()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 171
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    return p0
.end method

.method public isTransparent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    return p0
.end method

.method public needsClippingToShelf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->findContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    .line 79
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZ)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 84
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public performAddAnimation(JJZ)V
    .locals 0

    const/4 p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    return-void
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 0

    const/4 p1, 0x0

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public setContentVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZ)V

    return-void
.end method

.method public setEndAlpha(F)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mEndAlpha:F

    return-void
.end method

.method public setSecondaryVisible(ZZ)V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    if-eq v0, p1, :cond_0

    .line 159
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    .line 160
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 164
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    if-nez p1, :cond_1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-eq v0, p1, :cond_3

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 141
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZ)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 143
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZ)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_3
    :goto_2
    return-void
.end method
