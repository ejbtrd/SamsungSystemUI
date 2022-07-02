.class public Lcom/android/wm/shell/common/SnackBar;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSnackBarPref:Landroid/content/SharedPreferences;

.field private mView:Lcom/android/wm/shell/common/SnackBarView;

.field private mWasShownSnackBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/wm/shell/common/SnackBar;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "snack_bar_pref_name"

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/SnackBar;->mSnackBarPref:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "snack_bar_shown"

    .line 51
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/SnackBar;->mWasShownSnackBar:Z

    return-void
.end method

.method private disable()V
    .locals 2

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/android/wm/shell/common/SnackBar;->mWasShownSnackBar:Z

    .line 115
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mSnackBarPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    iget-boolean p0, p0, Lcom/android/wm/shell/common/SnackBar;->mWasShownSnackBar:Z

    const-string/jumbo v1, "snack_bar_shown"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private isReserveBatteryMode()Z
    .locals 5

    .line 74
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_DOWNLOADABLE_RESERVE_BATTERY_MODE:Z

    const-string v1, "enable_reserve_max_mode"

    const-string/jumbo v2, "reserve_battery_on"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/SnackBar;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 79
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/common/SnackBar;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3

    :cond_3
    return v4
.end method


# virtual methods
.method public hideIfPossible()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mView:Lcom/android/wm/shell/common/SnackBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mView:Lcom/android/wm/shell/common/SnackBarView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/SnackBarView;->hide()V

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mView:Lcom/android/wm/shell/common/SnackBarView;

    return-void
.end method

.method public onClickAction()V
    .locals 3

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    const-string/jumbo v2, "multi_window_for_all_apps"

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.settings.LABS_SETTINGS"

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ":settings:show_fragment_args"

    .line 103
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 104
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    iget-object p0, p0, Lcom/android/wm/shell/common/SnackBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/wm/shell/common/SnackBar;->disable()V

    return-void
.end method

.method public showIfPossible(Landroid/graphics/Rect;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mView:Lcom/android/wm/shell/common/SnackBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mView:Lcom/android/wm/shell/common/SnackBarView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/SnackBarView;->hide()V

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/SnackBar;->mWasShownSnackBar:Z

    if-eqz v0, :cond_1

    return-void

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/common/SnackBar;->isReserveBatteryMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->snack_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/SnackBarView;

    iput-object v0, p0, Lcom/android/wm/shell/common/SnackBar;->mView:Lcom/android/wm/shell/common/SnackBarView;

    .line 65
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SnackBarView;->addView(Landroid/graphics/Rect;)V

    .line 66
    iget-object p1, p0, Lcom/android/wm/shell/common/SnackBar;->mView:Lcom/android/wm/shell/common/SnackBarView;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SnackBarView;->setCallback(Lcom/android/wm/shell/common/SnackBarView$SnackBarCallbacks;)V

    return-void
.end method
