.class public Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;
.super Ljava/lang/Object;
.source "EdgeLightingConstants.java"


# static fields
.field public static final DEFAULT_COLOR_LIST:[I

.field public static final DEFAULT_COLOR_NAME_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;->getDefaultEdgeLightingColorList()[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;->DEFAULT_COLOR_LIST:[I

    .line 50
    invoke-static {}, Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;->getDefaultEdgeLightingColorNameList()[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;->DEFAULT_COLOR_NAME_LIST:[I

    return-void
.end method

.method public static getDefaultEdgeLightingColorList()[I
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        -0xfc7e02
        -0x2a999
        -0x1cd2d3
        -0xe84ed
        -0x41229d
        -0xcf358e
        -0xff4243
        -0x784d2b
        -0xa3a507
        -0x3b8e8f
        -0x60ce51
    .end array-data
.end method

.method private static getDefaultEdgeLightingColorNameList()[I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 60
    sget v1, Lcom/android/systemui/R$string;->color_blue:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_pink:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_red:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_orange:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_light_green:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_green:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_skyblue:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_turquoise:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_deep_blue:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_indie_pink:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->color_purple:I

    const/16 v2, 0xa

    aput v1, v0, v2

    return-object v0
.end method
