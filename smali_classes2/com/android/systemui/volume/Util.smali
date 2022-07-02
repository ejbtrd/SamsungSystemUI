.class Lcom/android/systemui/volume/Util;
.super Lcom/android/settingslib/volume/Util;
.source "Util.java"


# static fields
.field private static final SAMSUNG_AUDIO_MANAGER_FLAGS:[I

.field private static final SAMSUNG_AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/volume/Util;->SAMSUNG_AUDIO_MANAGER_FLAGS:[I

    const-string v1, "SHOW_UI"

    const-string v2, "VIBRATE"

    const-string v3, "PLAY_SOUND"

    const-string v4, "ALLOW_RINGER_MODES"

    const-string v5, "REMOVE_SOUND_AND_VIBRATE"

    const-string v6, "SHOW_VIBRATE_HINT"

    const-string v7, "SHOW_SILENT_HINT"

    const-string v8, "FROM_KEY"

    const-string v9, "SHOW_UI_WARNINGS"

    const-string v10, "MULTI_SOUND"

    const-string v11, "DISPLAY_VOLUME_CONTROL"

    const-string v12, "REMOTE_MIC"

    const-string v13, "DUAL_A2DP_MODE"

    const-string v14, "FIXED_SCO_VOLUME"

    .line 47
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Util;->SAMSUNG_AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
        0x800000
        0x400000
        0x4000000
        0x80000
        0x40000
    .end array-data
.end method

.method public static audioManagerSamsungFlagsToString(I)Ljava/lang/String;
    .locals 2

    .line 88
    sget-object v0, Lcom/android/systemui/volume/Util;->SAMSUNG_AUDIO_MANAGER_FLAGS:[I

    sget-object v1, Lcom/android/systemui/volume/Util;->SAMSUNG_AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/volume/Util;->bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vol."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RINGER_MODE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RINGER_MODE_NORMAL"

    return-object p0

    :cond_1
    const-string p0, "RINGER_MODE_VIBRATE"

    return-object p0

    :cond_2
    const-string p0, "RINGER_MODE_SILENT"

    return-object p0
.end method
