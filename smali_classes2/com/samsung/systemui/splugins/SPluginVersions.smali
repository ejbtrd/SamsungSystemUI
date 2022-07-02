.class public Lcom/samsung/systemui/splugins/SPluginVersions;
.super Ljava/lang/Object;
.source "SPluginVersions.java"


# static fields
.field public static final MODULE_MULTISTAR:Ljava/lang/String; = "multistar"

.field public static final MODULE_SLIMINDICATOR:Ljava/lang/String; = "slimindicator"

.field public static PLATFORM_VERSION_BIXBY2:I = 0x0

.field public static PLATFORM_VERSION_MULTISTAR:I = 0x0

.field public static PLATFORM_VERSION_NAVILLERA:I = 0x0

.field public static PLATFORM_VERSION_NOTISTAR:I = 0x0

.field public static PLATFORM_VERSION_PLUGIN_LOCK:I = 0x0

.field public static PLATFORM_VERSION_SLIMINDICATOR:I = 0x0

.field public static PLATFORM_VERSION_VOLUME_STAR:I = 0x0

.field private static final VERSION_BIXBY2:I = 0x3ee

.field private static final VERSION_MULTISTAR:I = 0x138f

.field private static final VERSION_NAVILLERA:I = 0x1770

.field private static final VERSION_NOTISTAR:I = 0x1389

.field private static final VERSION_PLUGIN_LOCK:I = 0xc1c

.field private static final VERSION_SLIMINDICATOR:I = 0x138b

.field private static final VERSION_SPLUGINMANAGER:I = 0x44d

.field private static final VERSION_VOLUME_STAR:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initVersion()V
    .locals 1

    const/16 v0, 0x3ee

    .line 41
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_BIXBY2:I

    const/16 v0, 0x138b

    .line 42
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SLIMINDICATOR:I

    const/16 v0, 0xc1c

    .line 43
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_PLUGIN_LOCK:I

    const/16 v0, 0xbb8

    .line 44
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_VOLUME_STAR:I

    const/16 v0, 0x138f

    .line 46
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTISTAR:I

    const/16 v0, 0x1389

    .line 48
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    const/16 v0, 0x1770

    .line 49
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NAVILLERA:I

    return-void
.end method
