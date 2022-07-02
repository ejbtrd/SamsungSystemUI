.class public Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;
.super Ljava/lang/Object;
.source "ContextStatusLoggingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLastUpdateTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendEdgeLightingStatusLogging(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method private executeSendLoggingData(Landroid/content/Context;)V
    .locals 2

    .line 61
    new-instance v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;-><init>(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Void;

    const/4 p1, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const/4 p1, 0x2

    aput-object v1, p0, p1

    .line 62
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    return-object v0
.end method

.method private makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1

    .line 302
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.samsung.android.app.cocktailbarservice"

    :goto_0
    const-string v0, "app_id"

    .line 305
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "feature"

    .line 306
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p1, "extra"

    .line 308
    invoke-virtual {p0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo p1, "value"

    .line 311
    invoke-virtual {p0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method private sendEdgeLightingStatusLogging(Landroid/content/Context;)V
    .locals 9

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingColorType(Landroid/content/ContentResolver;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    const-string v2, "EL13"

    const/4 v3, 0x0

    .line 255
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingTransparency(Landroid/content/ContentResolver;)I

    move-result v2

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "EL14"

    .line 261
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingThickness(Landroid/content/ContentResolver;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "EL15"

    .line 267
    invoke-direct {p0, v1, v5, v4, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result v5

    .line 275
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EL20"

    .line 273
    invoke-direct {p0, v1, v6, v5, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 281
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v6

    .line 282
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v7

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-virtual {v6, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 281
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "EL21"

    .line 279
    invoke-direct {p0, v1, v7, v6, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 289
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "EL22"

    .line 287
    invoke-direct {p0, v1, v8, v7, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 293
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 294
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 295
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 296
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 297
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method private sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 332
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_CONTEXTSERVICE_ENABLE_SURVEY:Z

    if-nez v0, :cond_0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendContextServiceLog -  servey mode feature not enabled"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "sendStatusContextLogging: "

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 339
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "data"

    .line 343
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context"

    .line 344
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public updateStatusLoggingItem(Landroid/content/Context;)V
    .locals 6

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    iget-wide v2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xf731400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateStatusLoggingItem: on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->executeSendLoggingData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
