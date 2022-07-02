.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SensorUseStartedActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mShouldRunDisableSensorPrivacy:Z

.field private sensor:I

.field private final sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sensorPrivacyListener:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

.field private sensorUsePackageName:Ljava/lang/String;

.field private unsuppressImmediately:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->Companion:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;

    .line 70
    const-class v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/policy/KeyguardStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "sensorPrivacyController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardDismissUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 63
    iput-object p3, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 64
    iput-object p4, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 66
    iput-object p5, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->bgHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    return-void
.end method

.method public static final synthetic access$disableSensorPrivacy(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->disableSensorPrivacy()V

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getSensor$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    return p0
.end method

.method public static final synthetic access$getSensorPrivacyController$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    return-object p0
.end method

.method public static final synthetic access$getSensorUsePackageName$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setSuppressed(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->setSuppressed(Z)V

    return-void
.end method

.method private final disableSensorPrivacy()V
    .locals 5

    .line 315
    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x7fffffff

    if-ne v0, v4, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IIZ)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IIZ)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {v4, v3, v0, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IIZ)V

    .line 321
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    const/4 v0, -0x1

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    return-void
.end method

.method private final setSuppressed(Z)V
    .locals 2

    .line 326
    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v1, 0x1

    .line 328
    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->suppressSensorPrivacyReminders(IZ)V

    .line 329
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v0, 0x2

    .line 330
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->suppressSensorPrivacyReminders(IZ)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 333
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->suppressSensorPrivacyReminders(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, -0x2

    const/4 v0, 0x0

    const-string/jumbo v1, "sensorUsePackageName"

    const/16 v2, 0x17e

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    iput-boolean p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mShouldRunDisableSensorPrivacy:Z

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->disableSensorPrivacy()V

    .line 258
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 256
    invoke-static {v2, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    const/4 p1, 0x2

    .line 265
    iget-object p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 263
    invoke-static {v2, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    .line 265
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setShowWhenLocked(Z)V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setFinishOnTouchOutside(Z)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x2

    const v3, 0x7fffffff

    if-eqz v1, :cond_2

    .line 105
    iput v3, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    .line 107
    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    .line 106
    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyListener:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    .line 114
    iget-object v4, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v4, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 126
    :cond_3
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 121
    iput v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    .line 128
    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$3;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    .line 127
    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyListener:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    .line 134
    iget-object v4, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    new-instance v4, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$4;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 145
    :try_start_0
    iget-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    sget v5, Lcom/android/systemui/R$layout;->sec_sensor_use_started_title:I

    const/4 v6, 0x0

    .line 145
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 148
    sget v5, Lcom/android/systemui/R$id;->sensor_use_started_title_message:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DialogTitle;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    iget v5, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    if-eq v5, p1, :cond_7

    if-eq v5, v2, :cond_6

    if-eq v5, v3, :cond_5

    move v5, v0

    goto :goto_1

    .line 157
    :cond_5
    sget v5, Lcom/android/systemui/R$string;->sec_sensor_privacy_start_use_camera_and_microphone_dialog_title:I

    goto :goto_1

    .line 155
    :cond_6
    sget v5, Lcom/android/systemui/R$string;->sec_sensor_privacy_start_use_camera_dialog_title:I

    goto :goto_1

    .line 153
    :cond_7
    sget v5, Lcom/android/systemui/R$string;->sec_sensor_privacy_start_use_microphone_dialog_title:I

    .line 149
    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DialogTitle;->setText(I)V

    .line 173
    iget-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->sensor_use_microphone_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iget v5, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    const/16 v7, 0x8

    if-eq v5, p1, :cond_9

    if-ne v5, v3, :cond_8

    goto :goto_2

    :cond_8
    move v5, v7

    goto :goto_3

    :cond_9
    :goto_2
    move v5, v0

    .line 173
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->sensor_use_camera_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 180
    iget v5, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    if-eq v5, v2, :cond_a

    if-ne v5, v3, :cond_b

    :cond_a
    move v7, v0

    .line 179
    :cond_b
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget v4, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    if-eq v4, p1, :cond_e

    if-eq v4, v2, :cond_d

    if-eq v4, v3, :cond_c

    move v2, v0

    goto :goto_4

    .line 194
    :cond_c
    sget v2, Lcom/android/systemui/R$string;->sec_sensor_privacy_start_use_camera_and_microphone_dialog_content:I

    goto :goto_4

    .line 192
    :cond_d
    sget v2, Lcom/android/systemui/R$string;->sec_sensor_privacy_start_use_camera_dialog_content:I

    goto :goto_4

    .line 190
    :cond_e
    sget v2, Lcom/android/systemui/R$string;->sec_sensor_privacy_start_use_microphone_dialog_content:I

    :goto_4
    new-array p1, p1, [Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-eqz v4, :cond_f

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p1, v0

    .line 186
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    sget p1, Lcom/android/systemui/R$string;->qs_sensor_privacy_dialog_turn_on:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 217
    sget p1, Lcom/android/systemui/R$string;->qs_sensor_privacy_dialog_cancel:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 222
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 223
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void

    :cond_f
    :try_start_1
    const-string/jumbo p1, "sensorUsePackageName"

    .line 207
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :catch_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 285
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyListener:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 288
    iget-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mShouldRunDisableSensorPrivacy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mShouldRunDisableSensorPrivacy:Z

    .line 290
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p0, "sensorPrivacyListener"

    .line 286
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setIntent(Landroid/content/Intent;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->recreate()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 230
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    const/4 v0, 0x1

    .line 232
    invoke-direct {p0, v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->setSuppressed(Z)V

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 273
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->setSuppressed(Z)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
