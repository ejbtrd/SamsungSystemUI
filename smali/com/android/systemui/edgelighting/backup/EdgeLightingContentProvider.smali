.class public Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;
.super Landroid/content/ContentProvider;
.source "EdgeLightingContentProvider.java"


# static fields
.field private static AND_DELEMETER:Ljava/lang/String;

.field public static final APP_LIST_CONTENT_URI:Landroid/net/Uri;

.field public static final CUSTOM_COLOR_LIST_CONTENT_URI:Landroid/net/Uri;

.field private static final DEBUG:Z

.field private static END_DELEMETER:Ljava/lang/String;

.field public static final SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field public static final TEXT_FILTER_CONTENT_URI:Landroid/net/Uri;

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mThemeSeq:I


# direct methods
.method public static synthetic $r8$lambda$8if0sMNGs4zWwnln6Jrv1xLNKq0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->lambda$init$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-class v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TAG:Ljava/lang/String;

    .line 37
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->DEBUG:Z

    const-string v0, ";"

    .line 59
    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    const-string/jumbo v0, "|"

    .line 61
    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->AND_DELEMETER:Ljava/lang/String;

    const-string v0, "content://com.android.systemui.edgelighting.backup.EdgeLightingContentProvider/app_list"

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->APP_LIST_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.edgelighting.backup.EdgeLightingContentProvider/custom_color_list"

    .line 69
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->CUSTOM_COLOR_LIST_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.edgelighting.backup.EdgeLightingContentProvider/lighting_settings"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.edgelighting.backup.EdgeLightingContentProvider/custom_text_filter_color"

    .line 75
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TEXT_FILTER_CONTENT_URI:Landroid/net/Uri;

    .line 82
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.systemui.edgelighting.backup.EdgeLightingContentProvider"

    const-string v2, "app_list"

    const/4 v3, 0x1

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "custom_color_list"

    const/4 v3, 0x2

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "lighting_settings"

    const/4 v3, 0x3

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "custom_text_filter_color"

    const/4 v3, 0x4

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getCustomColorListCursor()Landroid/database/MatrixCursor;
    .locals 3

    .line 229
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "custom_color_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->makeEdgeLightingCustomColorListValue()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 233
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private getEdgeLightingActionEnable()Ljava/lang/String;
    .locals 0

    .line 348
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingActionEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method private getEdgeLightingAppListCursor()Landroid/database/MatrixCursor;
    .locals 3

    .line 219
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "app_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->makeEdgeLightingAppListValue()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 222
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private getEdgeLightingSettingsCursor()Landroid/database/MatrixCursor;
    .locals 4

    .line 240
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "lighting_action_enable"

    const-string v2, "lighting_duration_option"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->getEdgeLightingActionEnable()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->getLightingDurationOptionValue()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 245
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private getLightingDurationOptionValue()Ljava/lang/String;
    .locals 0

    .line 356
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTextFilterColorListCursor()Landroid/database/MatrixCursor;
    .locals 3

    .line 253
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "custom_text_filter_color"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->makeTextFilterColorListValue()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 257
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private init()V
    .locals 6

    .line 97
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->resetAppCustomColor(Landroid/content/Context;)V

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_4

    const-string v0, "Brief fota"

    .line 101
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionTypeBeforeR(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveEdgeLightingDurationOption(Landroid/content/Context;I)V

    .line 105
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->clearEdgeLightingDurationOptionTypeBeforeR(Landroid/content/Context;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | DurationOptions"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edge_lighting_custom_text_color"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 113
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadCustomTextListBeforeR(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 117
    new-instance v5, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 125
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->clearCustomTextListBeforeR(Landroid/content/Context;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | CustomTextList"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getBackupColorVersion(Landroid/content/ContentResolver;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result v1

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->rematchingSimilarColorChip(Landroid/content/ContentResolver;I)V

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | ColotChipIndex"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_3
    sget-object p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " restore complete.."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private isValidPackage(Ljava/lang/String;)Z
    .locals 1

    .line 418
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 421
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    move p1, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 425
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p1

    :cond_1
    :goto_1
    return v0
.end method

.method private static synthetic lambda$init$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    sget-object p1, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    sget-object p1, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private makeEdgeLightingAppListValue()Ljava/lang/String;
    .locals 3

    .line 264
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "edge_lighting_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version"

    .line 268
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    sget-object v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "all_application"

    const/4 v2, 0x1

    .line 270
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "enable_list"

    const/4 v2, 0x0

    .line 272
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 274
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeEdgeLightingCustomColorListValue()Ljava/lang/String;
    .locals 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "edge_lighting_app_color"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 316
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 317
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    sget-object v2, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->AND_DELEMETER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    sget-object v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeTextFilterColorListValue()Ljava/lang/String;
    .locals 3

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadCustomTextList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 335
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    sget-object v2, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->AND_DELEMETER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    sget-object v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 342
    :cond_1
    sget-object p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeTextFilterColorListValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private restoreEdgeLightingAppListValue(Ljava/lang/String;)V
    .locals 5

    .line 283
    sget-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreEdgeLightingAppListValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "edge_lighting_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 289
    sget-object v3, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 290
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    if-nez v2, :cond_0

    .line 292
    aget-object v3, p1, v2

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "version"

    .line 292
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 295
    aget-object v3, p1, v2

    .line 296
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "all_application"

    .line 295
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 297
    :cond_1
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->isValidPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    aget-object v3, p1, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 302
    sget-object v3, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TAG:Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, "enable_list"

    .line 307
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 309
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private restoreEdgeLightingCustomColorListValue(Ljava/lang/String;)V
    .locals 7

    .line 360
    sget-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreEdgeLightingCustomColorListValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->resetAppCustomColor(Landroid/content/Context;)V

    .line 363
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "edge_lighting_app_color"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 365
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 367
    sget-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v0, v1

    .line 368
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 369
    aget-object v2, p1, v0

    sget-object v3, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->AND_DELEMETER:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 370
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 371
    aget-object v4, v2, v3

    const-string v5, "false"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v2, v3

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 374
    :cond_0
    aget-object v4, v2, v1

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 372
    :cond_1
    :goto_1
    aget-object v4, v2, v1

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    :goto_2
    sget-boolean v4, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 377
    sget-object v4, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private restoreEdgeLightingSettings(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "lighting_duration_option"

    .line 385
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    check-cast v0, Ljava/lang/String;

    .line 388
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveEdgeLightingDurationOption(Landroid/content/Context;I)V

    :cond_0
    const-string v0, "lighting_action_enable"

    .line 391
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 393
    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "true"

    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveEdgeLightingActionEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveEdgeLightingActionEnable(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private restoreEdgeLightingTextFilterColorListValue(Ljava/lang/String;)V
    .locals 6

    .line 404
    sget-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreEdgeLightingTextFilterColorListValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->resetAppCustomColor(Landroid/content/Context;)V

    .line 407
    sget-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->END_DELEMETER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 408
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 409
    aget-object v2, p1, v1

    sget-object v3, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->AND_DELEMETER:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 410
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v4, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveCustomTextColor(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 178
    sget-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "custom_text_filter_color"

    .line 198
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->restoreEdgeLightingTextFilterColorListValue(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->restoreEdgeLightingSettings(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_2
    const-string p1, "custom_color_list"

    .line 188
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 190
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->restoreEdgeLightingCustomColorListValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "app_list"

    .line 181
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 183
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->restoreEdgeLightingAppListValue(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 141
    iget v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->mThemeSeq:I

    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v0, v1, :cond_0

    .line 142
    iput v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->mThemeSeq:I

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->init()V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()Z
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->init()V

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 151
    sget-object p2, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->getTextFilterColorListCursor()Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->getEdgeLightingSettingsCursor()Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->getCustomColorListCursor()Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->getEdgeLightingAppListCursor()Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
