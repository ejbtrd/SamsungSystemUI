.class public Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;
.super Ljava/lang/Object;
.source "LatinFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil$CscParser;
    }
.end annotation


# static fields
.field private static final SYSUI_SALES_CODE:Ljava/lang/String;


# instance fields
.field private regionFromCSC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 23
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->SYSUI_SALES_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->regionFromCSC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isClaroBrazilPlmnBranding()Z
    .locals 1

    .line 32
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->SYSUI_SALES_CODE:Ljava/lang/String;

    const-string v0, "ZTA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public supportDisplayCBCH50()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->regionFromCSC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil$CscParser;

    invoke-static {}, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil$CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil$CscParser;-><init>(Ljava/lang/String;)V

    const-string v1, "GeneralInfo.Region"

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil$CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->regionFromCSC:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->regionFromCSC:Ljava/lang/String;

    const-string v0, "LA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportLatinDisabledIcon(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ZVV"

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ZTM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
