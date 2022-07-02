.class public Lcom/android/systemui/popup/data/MWOverheatWarningData;
.super Ljava/lang/Object;
.source "MWOverheatWarningData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()I
    .locals 0

    .line 16
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 17
    sget p0, Lcom/android/systemui/R$string;->multiwindow_overheat_warning_dialog_body_tablet:I

    goto :goto_0

    .line 18
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->multiwindow_overheat_warning_dialog_body_phone:I

    :goto_0
    return p0
.end method

.method public getPButton()I
    .locals 0

    .line 22
    sget p0, Lcom/android/systemui/R$string;->yes:I

    return p0
.end method

.method public getTitle()I
    .locals 0

    .line 12
    sget p0, Lcom/android/systemui/R$string;->multiwindow_overheat_warning_dialog_title:I

    return p0
.end method
