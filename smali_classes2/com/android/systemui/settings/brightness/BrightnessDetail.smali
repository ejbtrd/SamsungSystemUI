.class public Lcom/android/systemui/settings/brightness/BrightnessDetail;
.super Landroid/widget/FrameLayout;
.source "BrightnessDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;
    }
.end annotation


# instance fields
.field private mAutoBrightnessContainer:Landroid/widget/LinearLayout;

.field private mAutoBrightnessSummary:Landroid/widget/TextView;

.field private mAutoBrightnessSwitch:Landroid/widget/Switch;

.field private mBrightnessBarPref:Landroid/content/SharedPreferences;

.field private mBrightnessBarPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field private final mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

.field protected mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mContext:Landroid/content/Context;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V
    .locals 4

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 77
    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    const-string/jumbo p2, "quick_pref"

    const/4 p3, 0x0

    .line 80
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessBarPref:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_3

    .line 82
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, -0x2

    invoke-static {p2, v0, p3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p3

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_outdoor_mode"

    invoke-static {v2, v3, p3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move p3, v0

    .line 88
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    .line 89
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessBarPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessBarPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string p3, "QPDS1006"

    .line 90
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessBarPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Lcom/android/systemui/settings/brightness/BrightnessController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/settings/brightness/BrightnessDetail;Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/BrightnessController;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessBarPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->updateAutoBrightnessSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Lcom/android/systemui/settings/brightness/BrightnessController$Factory;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSummary:Landroid/widget/TextView;

    return-object p1
.end method

.method private updateAutoBrightnessSwitch()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_1

    .line 353
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public showDetail(Z)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method
