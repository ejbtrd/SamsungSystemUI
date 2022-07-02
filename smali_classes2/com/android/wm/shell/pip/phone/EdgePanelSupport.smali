.class public Lcom/android/wm/shell/pip/phone/EdgePanelSupport;
.super Ljava/lang/Object;
.source "EdgePanelSupport.java"


# static fields
.field public static mScaleRatio:F

.field private static final sDisplayHeightPerDpi:Landroid/util/SparseIntArray;

.field private static final sDisplayWidthPerDpi:Landroid/util/SparseIntArray;

.field private static sHandlerDefaultPositionPercent:F


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sDisplayWidthPerDpi:Landroid/util/SparseIntArray;

    .line 51
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sDisplayHeightPerDpi:Landroid/util/SparseIntArray;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    sput v0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->mScaleRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getActivityHeight(Landroid/content/Context;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 171
    sget-object v0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sDisplayWidthPerDpi:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 174
    :cond_0
    sget-object v0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sDisplayHeightPerDpi:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    const-string/jumbo v0, "window"

    .line 178
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 179
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 182
    :try_start_0
    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "EdgePanelSupport"

    const-string v3, "getBaseDisplaySize error"

    .line 184
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz p1, :cond_1

    .line 187
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 188
    sget-object p1, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sDisplayWidthPerDpi:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 191
    :cond_1
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 192
    sget-object p1, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sDisplayHeightPerDpi:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 196
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 198
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 199
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 200
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 203
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    if-gtz p1, :cond_4

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/wm/shell/R$dimen;->setting_handle_bottom_margin:I

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_4
    sub-int/2addr v0, p1

    .line 210
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getUpperMostPosition(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private static getActualActivityHeight(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    invoke-static {p0, v0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getActivityHeight(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static getActualActivityHeight(Landroid/content/Context;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 222
    invoke-static {}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 223
    :goto_0
    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getActivityHeight(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static getEdgeScreenPosition(Landroid/content/Context;)I
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "active_edge_area"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHandlerDefaultPositionPercent(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 125
    sget v0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sHandlerDefaultPositionPercent:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->initHandlerPosition(Landroid/content/Context;)V

    .line 128
    :cond_0
    sget p0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sHandlerDefaultPositionPercent:F

    return p0
.end method

.method private static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "navigation_bar_height"

    const-string v1, "dimen"

    .line 98
    invoke-virtual {v0, p0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 101
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public static getUpperMostPosition(Landroid/content/Context;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 152
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 155
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    add-int/2addr v2, v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$dimen;->settings_handle_bottom_margin:I

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public static initHandlerPosition(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 111
    invoke-static {p0, v0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getActualActivityHeight(Landroid/content/Context;I)I

    move-result v0

    const-string/jumbo v1, "window"

    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 114
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$dimen;->setting_handle_size_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->mScaleRatio:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 119
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getUpperMostPosition(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    int-to-float p0, v0

    div-float/2addr v1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v1, p0

    sput v1, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->sHandlerDefaultPositionPercent:F

    return-void
.end method

.method private static isSupportLandscape()Z
    .locals 5

    .line 85
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "landscape"

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "ro.build.characteristics"

    .line 88
    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "tablet"

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private static percentToPixel(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 229
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getActualActivityHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public getTriggerMarginOnTop(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getHandlerDefaultPositionPercent(Landroid/content/Context;)F

    move-result v1

    const-string v2, "edge_handler_position_percent"

    .line 138
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->percentToPixel(Landroid/content/Context;F)I

    move-result v0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getTriggerSizeOfPixel(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 141
    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getUpperMostPosition(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p0

    add-int/2addr v0, p1

    .line 143
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "getTriggerMarginOnTop"

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " retY="

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " halfHandleSize="

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgePanelSupport"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTriggerSizeOfPixel(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "edge_handle_size_percent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    .line 233
    invoke-static {p1, p0}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->percentToPixel(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public isEdgeEnabled(Z)Z
    .locals 3

    .line 68
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 70
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "edge_enable"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method
