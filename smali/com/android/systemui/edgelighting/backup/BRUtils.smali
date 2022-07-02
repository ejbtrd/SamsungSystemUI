.class public Lcom/android/systemui/edgelighting/backup/BRUtils;
.super Ljava/lang/Object;
.source "BRUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field mPanelListString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/edgelighting/backup/BRUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_systemui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/BRUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/backup/BRUtils;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/android/systemui/edgelighting/backup/BRUtils;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/backup/BRUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;

    .line 42
    :cond_0
    sget-object p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private makeEdgeLightingCustomizeSettingList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingThickness(Landroid/content/ContentResolver;)I

    move-result v2

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_lighting_thickness"

    const-string v4, "INT_SYSTEM"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingColorType(Landroid/content/ContentResolver;)I

    move-result v2

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_lighting_color_type"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edgelighting_recently_used_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "STRING_GLOBAL"

    invoke-direct {v1, v3, v2, v5}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edgelighting_custom_color"

    const v5, -0xb37941

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "INT_GLOBAL"

    invoke-direct {v1, v3, v2, v5}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingTransparency(Landroid/content/ContentResolver;)I

    move-result p0

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "edge_lighting_transparency"

    invoke-direct {v1, v2, p0, v4}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private makeEdgeLightingSettingList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 66
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_lighting"

    const-string v4, "INT_SYSTEM"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "turn_over_lighting"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingShowCondition(Landroid/content/ContentResolver;)I

    move-result p0

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "edge_lighting_show_condition"

    invoke-direct {v1, v2, p0, v4}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private makeEdgeLightingStyleSettingList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;",
            ">;"
        }
    .end annotation

    const-string v0, "EDGE_LIGHTING_CUSTOM_TEXT_FILTER"

    const-string v1, "EDGE_LIGHTING_SETTINGS"

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v3, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 140
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingSettingColorVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lighting_color_backup_version"

    const-string v6, "INT_GLOBAL"

    invoke-direct {v3, v5, v4, v6}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v3, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 145
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "edge_lighting_style_type_str"

    const-string v6, "STRING_SYSTEM"

    invoke-direct {v3, v5, v4, v6}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v3, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result v4

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "edge_lighting_basic_color_index"

    const-string v6, "INT_SYSTEM"

    invoke-direct {v3, v5, v4, v6}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 177
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    new-instance v5, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    const-string v6, "lighting_action_enable"

    .line 180
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v1}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v5, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    const-string v6, "lighting_duration_option"

    const/4 v7, 0x1

    .line 185
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v1}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 174
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 190
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TEXT_FILTER_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 195
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    new-instance v1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    .line 198
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3, v0}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 192
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    :cond_2
    :goto_3
    if-eqz p0, :cond_3

    .line 202
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2
.end method


# virtual methods
.method public makeCocktailSettingList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 46
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/BRUtils;->makeEdgeLightingSettingList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/BRUtils;->makeEdgeLightingCustomizeSettingList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/backup/BRUtils;->makeEdgeLightingStyleSettingList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public restoreSettingValue(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 317
    :cond_0
    sget-boolean p1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    if-eqz p1, :cond_1

    .line 319
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initColorTypeIndex(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public restoreSettingValue(ZLjava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    new-instance v0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 212
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->getItemsList()Ljava/util/ArrayList;

    move-result-object p2

    .line 214
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->getType()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->getName()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 228
    :cond_1
    sget-boolean v4, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "turn_over_lighting"

    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "edge_lighting_basic_color_index"

    .line 231
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->rematchingSimilarColorChip(Landroid/content/ContentResolver;I)V

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    .line 237
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "STRING_SYSTEM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "STRING_GLOBAL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "EDGE_LIGHTING_CUSTOM_TEXT_FILTER"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "INT_SYSTEM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "EDGE_LIGHTING_APP_LIST_SETTING"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "EDGE_LIGHTING_SETTINGS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_6
    const-string v5, "INT_GLOBAL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string v5, "PANEL_CLASS_LIST"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_8
    const-string v5, "INT_SHARED_PREFERENCE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_9
    const-string v5, "EDGE_LIGHTING_CUSTOM_COLOR_LIST_SETTING"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_a
    const-string v5, "FLOAT_SYSTEM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1

    :cond_e
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_b
    const-string v5, "BOOLEAN_SHARED_PREFERENCE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1

    :cond_f
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_c
    const-string v5, "FLOAT_GLOBAL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1

    :cond_10
    move v4, v6

    :goto_1
    const-string v1, "cocktailbar_shared_prefs"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 255
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 258
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 301
    :pswitch_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "custom_text_filter_color"

    .line 302
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TEXT_FILTER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    .line 239
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 239
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 280
    :pswitch_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_list"

    .line 281
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->APP_LIST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    .line 294
    :pswitch_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 295
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 243
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 243
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 261
    :pswitch_7
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mPanelListString:Ljava/lang/String;

    goto :goto_2

    .line 264
    :pswitch_8
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 267
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 287
    :pswitch_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "custom_color_list"

    .line 288
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->CUSTOM_COLOR_LIST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 247
    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 248
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 247
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_2

    .line 272
    :pswitch_b
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 274
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 275
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 251
    :pswitch_c
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 252
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 251
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 308
    :goto_2
    sget-object v1, Lcom/android/systemui/edgelighting/backup/BRUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restore Setting  Value - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    :cond_11
    :goto_3
    sget-object p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74aef0fa -> :sswitch_c
        -0x63917382 -> :sswitch_b
        -0x5f7b826e -> :sswitch_a
        -0x5f43df18 -> :sswitch_9
        -0x49e8137b -> :sswitch_8
        0x26b460 -> :sswitch_7
        0xa99c213 -> :sswitch_6
        0xd2091f4 -> :sswitch_5
        0x1d9ce5de -> :sswitch_4
        0x1fcd309f -> :sswitch_3
        0x24c3938d -> :sswitch_2
        0x50311b91 -> :sswitch_1
        0x65648a1d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
