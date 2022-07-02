.class public Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;
.super Ljava/lang/Object;
.source "BatteryStateUtil.java"


# static fields
.field public static final sShowBatteryPercentDefaultValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDefStatusShowBatteryPercent"

    const-string v2, "ON"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;->sShowBatteryPercentDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowBatteryPercentDefaultOn()Z
    .locals 1

    .line 19
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;->sShowBatteryPercentDefaultValue:Ljava/lang/String;

    const-string v0, "ON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
