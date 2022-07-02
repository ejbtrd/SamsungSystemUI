.class public Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;
.super Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;
.source "QSClockHomeIndicatorView.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field protected mClockVisibleByUser:Z

.field private final mDateClockStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mPrvColor:I

.field private mQSClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mClockVisibleByUser:Z

    .line 236
    new-instance p1, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mDateClockStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mQSClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mQSClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    return-object p1
.end method

.method private isEdgeColorValue(II)Z
    .locals 1

    const p0, -0x12000001

    if-eq p1, p0, :cond_1

    const/high16 v0, -0x4d000000

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private printWhiteBgSolutionLog(I)V
    .locals 2

    .line 208
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/QSClock;->DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 209
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mPrvColor:I

    if-eq v0, p1, :cond_1

    .line 210
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->isEdgeColorValue(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "printWhiteBgSolutionLog() Home-Indicator-Color is changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mPrvColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockHomeIndicatorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mPrvColor:I

    :cond_1
    return-void
.end method

.method private setSettingsHelper()V
    .locals 4

    .line 75
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-nez v0, :cond_0

    .line 76
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mDateClockStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "status_bar_show_date"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateVisibility()Z
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->calculateVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mClockVisibleByUser:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 122
    const-class p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public getDateText(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)Ljava/lang/String;
    .locals 2

    .line 142
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ko"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getShortDateText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getDateText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isRTL()Z
    .locals 2

    .line 251
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 7

    .line 153
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getDemo()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 155
    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-eqz v1, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->setSettingsHelper()V

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getTimeText()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getTimeContentDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->isRTL()Z

    move-result v1

    const-string v5, "   "

    if-eqz v1, :cond_2

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->getDateText(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->getDateText(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v3, v1

    .line 174
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isLeftClockPosition()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$dimen;->status_bar_date_clock_right_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v4

    .line 178
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0, v4, v4, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 182
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->showAmPmClock()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Home Indicator status_bar_clock notifyTimeChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") ClockVisibleByPolicy:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", ClockVisibleByUser:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mClockVisibleByUser:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", visible?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    const/4 v4, 0x1

    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", parent:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSClockHomeIndicatorView"

    .line 186
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->onAttachedToWindow()V

    .line 84
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 86
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->setSettingsHelper()V

    .line 88
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mQSClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 232
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->setTextColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->onDetachedFromWindow()V

    .line 95
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 96
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mDateClockStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const-string p2, "clock"

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->setClockVisibleByUser(Z)V

    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mClockVisibleByUser:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 107
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->mClockVisibleByUser:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClockVisibility()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->printWhiteBgSolutionLog(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;->printWhiteBgSolutionLog(I)V

    return-void
.end method
