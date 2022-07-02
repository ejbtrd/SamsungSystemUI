.class public Lcom/android/systemui/navigationbar/util/NavigationModeUtil;
.super Ljava/lang/Object;
.source "NavigationModeUtil.java"


# direct methods
.method public static getOverlayPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "com.android.internal.systemui.navbar.threebutton"

    return-object p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/android/systemui/BasicRune;->supportSamsungGesturalModeAsDefault()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v4, "navigation_bar_gesture_detail_type"

    .line 40
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "navigation_bar_gesture_hint"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural"

    goto :goto_0

    :cond_2
    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    :goto_0
    return-object p0

    :cond_3
    if-eqz v2, :cond_4

    const-string p0, "com.android.internal.systemui.navbar.gestural"

    goto :goto_1

    :cond_4
    const-string p0, "com.samsung.internal.systemui.navbar.gestural_no_hint"

    :goto_1
    return-object p0
.end method

.method public static isBottomGesture(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSideBottomGesture(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
