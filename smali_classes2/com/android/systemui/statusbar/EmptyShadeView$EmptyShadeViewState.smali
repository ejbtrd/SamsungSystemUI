.class public Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "EmptyShadeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/EmptyShadeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyShadeViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/EmptyShadeView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 5

    .line 98
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 99
    instance-of v0, p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v0, :cond_5

    .line 100
    check-cast p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->access$000(Lcom/android/systemui/statusbar/EmptyShadeView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 102
    :goto_0
    sget-boolean v3, Lcom/android/systemui/QpRune;->NOTI_STYLE_EMPTY_SHADE:Z

    if-eqz v3, :cond_2

    .line 103
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/EmptyShadeView;->access$100(Lcom/android/systemui/statusbar/EmptyShadeView;)I

    move-result p0

    int-to-float p0, p0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr p0, v4

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    if-eqz v3, :cond_5

    const p0, 0x3e4ccccd    # 0.2f

    .line 107
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setEndAlpha(F)V

    if-eqz v0, :cond_4

    .line 108
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    :cond_5
    return-void
.end method
