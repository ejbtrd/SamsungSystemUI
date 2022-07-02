.class public Lcom/android/systemui/settings/brightness/ToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "ToggleSeekBar.java"


# instance fields
.field private mAccessibilityLabel:Ljava/lang/String;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mHighBrightnessModeEnter:Z

.field private mHighBrightnessModeToast:Landroid/widget/Toast;

.field private mIsDetailViewTouched:Z

.field private mIsDragging:Z

.field private mSliderDisableToast:Landroid/widget/Toast;

.field private mSystemBrightnessEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mHighBrightnessModeEnter:Z

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSystemBrightnessEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mHighBrightnessModeEnter:Z

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSystemBrightnessEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mHighBrightnessModeEnter:Z

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSystemBrightnessEnabled:Z

    return-void
.end method

.method private isAutoChecked()Z
    .locals 3

    .line 158
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private showHighBrightnessModeToast()V
    .locals 3

    const-string v0, "ToggleSeekBar"

    const-string/jumbo v1, "showHighBrightnessModeToast()"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->sec_brightness_slider_hbm_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 153
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSliderDisabledToast()V
    .locals 3

    const-string v0, "ToggleSeekBar"

    const-string/jumbo v1, "showSliderDisabledToast()"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSliderDisableToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->sec_brightness_slider_disabled_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSliderDisableToast:Landroid/widget/Toast;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 142
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSliderDisableToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getDragging()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDragging:Z

    return p0
.end method

.method protected getSystemBrightnessEnabled()Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSystemBrightnessEnabled:Z

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 72
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSystemBrightnessEnabled:Z

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->showSliderDisabledToast()V

    :cond_1
    return v1

    .line 81
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDragging:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDetailViewTouched:Z

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 86
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mHighBrightnessModeEnter:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->isAutoChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->showHighBrightnessModeToast()V

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_5

    .line 94
    iget-object p0, p0, Landroid/widget/SeekBar;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p0

    .line 96
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return v1

    .line 103
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAccessibilityLabel(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    return-void
.end method

.method public setDetailViewTouch(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDetailViewTouched:Z

    return-void
.end method

.method public setDragging(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mIsDragging:Z

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method protected setHighBrightnessModeEnter(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mHighBrightnessModeEnter:Z

    return-void
.end method

.method protected setSystemBrightnessEnabled(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mSystemBrightnessEnabled:Z

    return-void
.end method
