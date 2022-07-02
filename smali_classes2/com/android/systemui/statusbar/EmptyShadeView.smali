.class public Lcom/android/systemui/statusbar/EmptyShadeView;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "EmptyShadeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
    }
.end annotation


# instance fields
.field private mEmptyText:Landroid/widget/TextView;

.field private mText:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget p1, Lcom/android/systemui/R$string;->empty_shade_text:I

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    const/16 p1, 0xc8

    .line 114
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mTopPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/EmptyShadeView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/EmptyShadeView;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mTopPadding:I

    return p0
.end method


# virtual methods
.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;-><init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .locals 1

    .line 57
    sget v0, Lcom/android/systemui/R$id;->no_notifications:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected findSecondaryView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextResource()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    iget-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 48
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_STYLE_EMPTY_SHADE:Z

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->no_notification_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onFinishInflate()V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/EmptyShadeView;->findContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    return-void
.end method

.method public setText(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 66
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_STYLE_EMPTY_SHADE:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->no_notification_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public updateHeight(II)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iput p2, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mTopPadding:I

    return-void
.end method
