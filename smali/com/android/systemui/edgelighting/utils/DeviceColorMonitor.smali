.class public Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;
.super Ljava/lang/Object;
.source "DeviceColorMonitor.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DeviceColorMonitor"

.field private static final mDeviceColorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWallPaperColorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->DEBUG:Z

    .line 53
    new-instance v0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor$1;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor$1;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->mWallPaperColorMap:Ljava/util/HashMap;

    .line 73
    new-instance v0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor$2;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor$2;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->mDeviceColorMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getDeviceWallPaperColorIndex(Landroid/content/ContentResolver;)I
    .locals 3

    const-string/jumbo v0, "ril.product_code"

    const-string v1, "none"

    .line 194
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const/16 p0, 0x8

    .line 199
    :try_start_0
    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 201
    sget-object v0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->mWallPaperColorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 205
    :catch_0
    sget-object p0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->TAG:Ljava/lang/String;

    const-string v0, "IndexOutOfBoundsException occurred on getDeviceColorCodeFromSystemProperty"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "cmf_color_code"

    .line 208
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 209
    sget-object v0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceWallPaperColorIndex setttingDB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->TAG:Ljava/lang/String;

    const-string v0, "getDeviceWallPaperColorIndex not existed color"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object p0, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->mWallPaperColorMap:Ljava/util/HashMap;

    const-string/jumbo v0, "zk"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
