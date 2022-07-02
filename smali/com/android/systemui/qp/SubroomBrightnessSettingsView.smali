.class public Lcom/android/systemui/qp/SubroomBrightnessSettingsView;
.super Landroid/widget/LinearLayout;
.source "SubroomBrightnessSettingsView.java"


# instance fields
.field private mBrightness:I

.field private mBrightnessLevels:[I

.field private final mContext:Landroid/content/Context;

.field mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field mSeekBar:Landroid/widget/SeekBar;

.field private mSubBrightnessPref:Landroid/content/SharedPreferences;

.field private mSubBrightnessPrefEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance p2, Lcom/android/systemui/qp/SubroomBrightnessSettingsView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView$1;-><init>(Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    iput-object p2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10700ff

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightnessLevels:[I

    const-string/jumbo p2, "quick_pref"

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSubBrightnessPref:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSubBrightnessPrefEditor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qp/SubroomBrightnessSettingsView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->updateSubBrightness(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qp/SubroomBrightnessSettingsView;Landroid/widget/SeekBar;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->onProgressSnap(Landroid/widget/SeekBar;)V

    return-void
.end method

.method private checkRestrictionAndSetEnabled()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v1

    const-string v2, "no_config_brightness"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private onProgressSnap(Landroid/widget/SeekBar;)V
    .locals 8

    .line 108
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightnessLevels:[I

    array-length v2, v1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move v5, v4

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget v6, v1, v3

    sub-int v7, v6, v0

    .line 113
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v5, :cond_0

    move v4, v6

    move v5, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekbar value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , snap value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubroomBrightnessSettingsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, v4}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->updateSubBrightness(I)V

    .line 122
    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    int-to-long v0, v4

    const-string p1, "QPPE2009"

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private updateSubBrightness(I)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sub_screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSubBrightnessPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "QPDS2014"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSubBrightnessPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sub_screen_brightness"

    const/16 v2, 0x49

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow() mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubroomBrightnessSettingsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->checkRestrictionAndSetEnabled()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 64
    sget v0, Lcom/android/systemui/R$id;->subroom_brightness_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x78

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setBrightness()V

    return-void
.end method

.method public setBrightness()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sub_screen_brightness"

    const/16 v2, 0x49

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBrightness() mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubroomBrightnessSettingsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->updateSubBrightness(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightness:I

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
