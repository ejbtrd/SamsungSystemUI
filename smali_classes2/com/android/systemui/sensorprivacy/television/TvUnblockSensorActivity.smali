.class public Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;
.super Lcom/android/systemui/tv/TvBottomSheetActivity;
.source "TvUnblockSensorActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TvUnblockSensorActivity"


# instance fields
.field private mSensor:I

.field private mSensorPrivacyCallback:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

.field private final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# direct methods
.method public static synthetic $r8$lambda$87RUmlYc7wZiNYBfMemRPros568(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->lambda$onCreate$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CdhJoX4YY_YUJToxTkxzOENVqr0(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->lambda$initUI$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KMJ0-S-5p8oB1SLBN4wr53ZeqnA(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->lambda$initUI$2(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 54
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    return-void
.end method

.method private initUI()V
    .locals 11

    .line 90
    sget v0, Lcom/android/systemui/R$id;->bottom_sheet_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    sget v1, Lcom/android/systemui/R$id;->bottom_sheet_body:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    sget v2, Lcom/android/systemui/R$id;->bottom_sheet_icon:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 94
    sget v3, Lcom/android/systemui/R$id;->bottom_sheet_second_icon:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 95
    sget v4, Lcom/android/systemui/R$id;->bottom_sheet_positive_button:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 96
    sget v5, Lcom/android/systemui/R$id;->bottom_sheet_negative_button:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 98
    iget v6, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    const/4 v7, 0x1

    const/16 v8, 0x8

    const v9, 0x10806e5

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    const v10, 0x10806e0

    if-eq v6, v7, :cond_0

    .line 113
    sget v6, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_camera_dialog_title:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 114
    sget v0, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_camera_dialog_content:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 106
    :cond_0
    sget v6, Lcom/android/systemui/R$string;->sensor_privacy_start_use_camera_dialog_title:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 107
    sget v0, Lcom/android/systemui/R$string;->sensor_privacy_start_use_camera_dialog_content:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 108
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_1
    sget v6, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_dialog_title:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 101
    sget v0, Lcom/android/systemui/R$string;->sensor_privacy_start_use_mic_dialog_content:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 102
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x1040c6c

    .line 119
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 121
    new-instance v0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x1040000

    .line 130
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(I)V

    .line 131
    new-instance v0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initUI$1(Landroid/view/View;)V
    .locals 3

    .line 122
    iget p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    const/4 v0, 0x0

    const/4 v1, 0x5

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IIZ)V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 p1, 0x1

    invoke-interface {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IIZ)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IIZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initUI$2(Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(IZ)V
    .locals 2

    .line 76
    iget v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 p2, 0x1

    .line 78
    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    if-nez p2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/systemui/tv/TvBottomSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    .line 64
    iput p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 69
    :goto_0
    iget p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    if-ne p1, v0, :cond_1

    .line 70
    sget-object p1, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->TAG:Ljava/lang/String;

    const-string v0, "Invalid extras"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    return-void

    .line 75
    :cond_1
    new-instance p1, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;)V

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyCallback:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->initUI()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyCallback:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyCallback:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
