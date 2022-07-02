.class public Lcom/android/systemui/qs/NonInterceptingScrollView;
.super Landroid/widget/ScrollView;
.source "NonInterceptingScrollView.java"


# instance fields
.field private mDownY:F

.field private mScrollEnabled:Z

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    .line 38
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mTouchSlop:I

    .line 41
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->setScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getScrollRange()I
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    .line 110
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 85
    iget v2, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mDownY:F

    sub-float/2addr v0, v2

    .line 86
    iget v2, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mTouchSlop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mDownY:F

    .line 93
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 55
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    return-void
.end method
