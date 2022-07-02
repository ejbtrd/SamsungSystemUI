.class public Lcom/android/systemui/edgelighting/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static final FEATURE_COMMON_SUPPORT_KNOX_DESKTOP:Z

.field public static final FEATURE_COMMON_SUPPORT_UNPACK:Z

.field public static FEATURE_CONTEXTSERVICE_ENABLE_SURVEY:Z

.field public static FEATURE_ENABLE_EDGE_FEEDS:Z

.field public static final FEATURE_ENABLE_EDGE_PANEL:Z

.field public static final FEATURE_SUPPORT_ACCESSIBILITY_CONFLICT:Z

.field public static final FEATURE_SUPPORT_AOD:Z

.field public static final FEATURE_SUPPORT_BASIC_LIGHTING:Z

.field public static final FEATURE_SUPPORT_BIXBY:Z

.field public static final FEATURE_SUPPORT_BLUR_EFFECT:Z

.field public static FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

.field public static final FEATURE_SUPPORT_COST_POPUP_CHN:Z

.field public static final FEATURE_SUPPORT_EDGE_LIGHTING:Z

.field public static final FEATURE_SUPPORT_EDGE_LIGHTING_RESTORE_DISABLE:Z

.field public static final FEATURE_SUPPORT_EDGE_LIGHTING_TILE:Z

.field public static final FEATURE_SUPPORT_MANAGE_EXCLUSIVE_TASK:Z

.field public static final FEATURE_SUPPORT_NIGHT_CLOCK:Z

.field public static final FEATURE_SUPPORT_QUICK_ACTION:Z

.field public static final FEATURE_SUPPROT_BADGE_PROVIDER:Z

.field public static FEATURE_SUPPROT_IN_APP_SEARCH:Z

.field protected static final sIconBranding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 170
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v2, ""

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/Feature;->sIconBranding:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->isChineseModel()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COST_POPUP_CHN:Z

    .line 179
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_CONTEXTSERVICE_ENABLE_SURVEY:Z

    .line 180
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 182
    sput-boolean v1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_NIGHT_CLOCK:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const-string v4, "-edgefeeds"

    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_ENABLE_EDGE_FEEDS:Z

    .line 184
    sput-boolean v1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_QUICK_ACTION:Z

    .line 185
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BIXBY:Z

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v4, 0x1d4c0

    if-lt v0, v4, :cond_1

    move v1, v3

    :cond_1
    sput-boolean v1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    .line 187
    sput-boolean v1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING_TILE:Z

    .line 188
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_COMMON_SUPPORT_KNOX_DESKTOP:Z

    .line 189
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_COMMON_SUPPORT_UNPACK:Z

    .line 190
    sput-boolean v3, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPROT_BADGE_PROVIDER:Z

    .line 191
    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->isEnableInAppSearch()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPROT_IN_APP_SEARCH:Z

    .line 192
    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->isEnablePhoneColor()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    .line 193
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ACCESSIBILITY_CONFLICT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_ACCESSIBILITY_CONFLICT:Z

    .line 194
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_MANAGE_EXCLUSIVE_TASK:Z

    .line 195
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BLUR_EFFECT:Z

    .line 196
    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->isSupportFrameEffect()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BASIC_LIGHTING:Z

    .line 197
    sput-boolean v3, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING_RESTORE_DISABLE:Z

    .line 198
    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->isSupportEdgePanel()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_ENABLE_EDGE_PANEL:Z

    .line 199
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aodversion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    return-void
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.omc.country_code"

    .line 217
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.country_code"

    .line 218
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "ril.sales_code"

    .line 220
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, ""

    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public static isChineseModel()Z
    .locals 2

    .line 204
    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CHINA"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEdgeLightingDefaultOff()Z
    .locals 5

    .line 252
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ConfigDefStatusEdgeLighting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CarrierFeature_SystemUI_ConfigDefStatusEdgeLighting"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-defaulton"

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isEnableInAppSearch()Z
    .locals 2

    .line 259
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "search"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnablePhoneColor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isSupportEdgePanel()Z
    .locals 2

    .line 299
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "-edge_panel"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSupportFrameEffect()Z
    .locals 2

    .line 284
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "frame_effect"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
