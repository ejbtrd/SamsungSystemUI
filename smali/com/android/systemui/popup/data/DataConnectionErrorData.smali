.class public Lcom/android/systemui/popup/data/DataConnectionErrorData;
.super Ljava/lang/Object;
.source "DataConnectionErrorData.java"


# instance fields
.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public static synthetic $r8$lambda$RaRdG-l041ndjGPtPWTHXBc_fqs(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->lambda$getPButtonClickListener$2(ZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$StwjNOqSnVmWYCv45szg3jrNt84(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->lambda$getPButtonClickListener$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZJBB7ekovdsUhHhCF8CqhyxsnnQ(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->lambda$getPButtonClickListener$1(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method

.method private static synthetic lambda$getPButtonClickListener$0(Landroid/content/Context;)V
    .locals 2

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.AIRPLANE_MODE"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$getPButtonClickListener$1(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$getPButtonClickListener$2(ZLandroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    iget-object p0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showDataConnectionNotifications() : PendingIntent.send() error. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataConnectionErrorData"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getBody(I)I
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_no_signal_body:I

    return p0

    .line 46
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_data_roaming_off_body:I

    return p0

    .line 44
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_mobile_data_off_body:I

    return p0

    .line 40
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 41
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_flight_mode_on_body_tablet:I

    goto :goto_0

    .line 42
    :cond_4
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_flight_mode_on_body:I

    :goto_0
    return p0
.end method

.method public getNButton(IZ)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    const/4 v0, -0x1

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 76
    sget v0, Lcom/android/systemui/R$string;->later:I

    :cond_1
    return v0

    .line 72
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->no:I

    return p0

    .line 70
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->no:I

    return p0
.end method

.method public getPButton(IZ)I
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 62
    sget p0, Lcom/android/systemui/R$string;->retry:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/systemui/R$string;->yes:I

    :goto_0
    return p0

    .line 60
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->yes:I

    return p0

    .line 58
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->popupui_dialog_turn_on_button:I

    return p0

    .line 56
    :cond_4
    sget p0, Lcom/android/systemui/R$string;->status_bar_settings_settings_button:I

    return p0
.end method

.method public getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_0
    new-instance p1, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V

    return-object p1

    .line 92
    :cond_1
    new-instance p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 84
    :cond_2
    new-instance p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getTitle(I)I
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 32
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_no_network_connection:I

    return p0

    .line 30
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_no_network_connection:I

    return p0

    .line 28
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_mobile_data_off_title:I

    return p0

    .line 26
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->data_connection_error_flight_mode_on_title:I

    return p0
.end method
