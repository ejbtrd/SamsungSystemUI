.class Lcom/android/systemui/settings/brightness/BrightnessDetail$1;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBrightnessDetailSliderView:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

.field private mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->setAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->showAdminSupportDetails()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessDetailSliderView:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessDetailSliderView:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;)Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Z
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->getAutoBrightnessAvailable()Z

    move-result p0

    return p0
.end method

.method private getAutoBrightnessAvailable()Z
    .locals 1

    .line 313
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "BrightenssDetail"

    const-string v0, "Auto brightness options are not available by KnoxStateMonitor."

    .line 314
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private initBrightnessDetail(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/QSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSSwitchPreference;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$702(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->isAutoBrightnessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$string;->sec_brightness_auto_brightness_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->sec_brightness_outdoor_mode_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-static {p2, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$502(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 194
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$802(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 195
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$800(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p2, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v2

    .line 202
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v4}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_outdoor_mode"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 203
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move p2, v1

    .line 204
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 206
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setImportantForAccessibility(I)V

    .line 208
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object p2

    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object p2

    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p2

    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V

    invoke-virtual {p2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->isCameraLightSensorSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 274
    const-class p2, Landroid/hardware/SensorPrivacyManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p2, v1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result p2

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlocked "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BrightenssDetail"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v1

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v1

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$800(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_5

    move v0, v2

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$800(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_adaptive_brightness_disabled_sub_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object p0

    if-eqz p2, :cond_6

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_4

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method private isAutoBrightnessEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 299
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private isCameraLightSensorSupported(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "BrightenssDetail"

    const-string v0, "isCameraLightSensorSupported"

    .line 290
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sensor"

    .line 291
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const v1, 0x10044

    .line 292
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAutoBrightness(Z)V
    .locals 5

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "automatic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightenssDetail"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$100(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_3

    .line 324
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BRIGHTNESS_PERSONAL_CONTROL:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "screen_brightness"

    const-string v2, "brightness_pms_marker_screen"

    if-eqz p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_1

    move-object v0, v2

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v4, 0x64

    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 331
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v3}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 336
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 340
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_outdoor_mode"

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private showAdminSupportDetails()V
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showAdminSupportDetails.admin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightenssDetail"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p0

    .line 309
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 134
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->sec_brightness_detail:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->initBrightnessDetail(Landroid/content/Context;Landroid/view/View;)V

    .line 138
    new-instance p3, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1389

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 169
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->sec_brightness_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 0

    return-void
.end method
