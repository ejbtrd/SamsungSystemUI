.class public Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;
.super Ljava/lang/Object;
.source "NavBarTipPopupUtil.java"


# direct methods
.method public static getA11ySwipeUpTipCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "NavigationBarAccessibilityShortcutTipCount"

    const/4 v1, 0x0

    .line 17
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isA11ySwipeUpPopupAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;->getA11ySwipeUpTipCount(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setA11ySwipeUpTipCount(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-static {p0}, Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;->getA11ySwipeUpTipCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "NavigationBarAccessibilityShortcutTipCount"

    .line 21
    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
