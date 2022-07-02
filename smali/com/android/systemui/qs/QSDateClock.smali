.class public Lcom/android/systemui/qs/QSDateClock;
.super Landroid/widget/LinearLayout;
.source "QSDateClock.java"


# instance fields
.field private mClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

.field private final mContext:Landroid/content/Context;

.field private mDate:Lcom/android/systemui/statusbar/policy/QSDate;

.field private mOldOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/QSDateClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateVisibility()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 42
    :goto_0
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    iget v0, p0, Lcom/android/systemui/qs/QSDateClock;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDateClock;->updateVisibility()V

    .line 60
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/QSDateClock;->mOldOrientation:I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    sget v0, Lcom/android/systemui/R$id;->panel_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDateClock;->mClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    .line 35
    sget v0, Lcom/android/systemui/R$id;->panel_date:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSDate;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDateClock;->mDate:Lcom/android/systemui/statusbar/policy/QSDate;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDateClock;->updateVisibility()V

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDateClock;->updateColor()V

    return-void
.end method

.method public updateColor()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/QSDateClock;->mClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDateClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->sec_qs_header_date_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/QSDateClock;->mDate:Lcom/android/systemui/statusbar/policy/QSDate;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDateClock;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
