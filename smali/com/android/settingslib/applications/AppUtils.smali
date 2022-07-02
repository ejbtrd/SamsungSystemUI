.class public Lcom/android/settingslib/applications/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static mSearchKeyword:Ljava/lang/CharSequence;

.field private static final sBrowserIntent:Landroid/content/Intent;

.field private static sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    .line 59
    sput-object v0, Lcom/android/settingslib/applications/AppUtils;->mSearchKeyword:Ljava/lang/CharSequence;

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 68
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/AppUtils;->sBrowserIntent:Landroid/content/Intent;

    return-void
.end method

.method public static getKeyword()Ljava/lang/CharSequence;
    .locals 1

    .line 111
    sget-object v0, Lcom/android/settingslib/applications/AppUtils;->mSearchKeyword:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static hasAppDefaults(Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Z
    .locals 3

    .line 159
    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p2

    .line 160
    invoke-static {p0, p3}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 161
    invoke-static {p0, p3}, Lcom/android/settingslib/applications/AppUtils;->isDefaultBrowser(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 162
    invoke-static {p1, p3}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-nez p0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {p0, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Have "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " number of activities in preferred list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 88
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "AppUtils"

    const-string v0, "mUsbManager.hasDefaults"

    .line 91
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 173
    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;-><init>()V

    .line 174
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->isChangedByUser()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public static isDefaultBrowser(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isInstant(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    .line 119
    sget-object v0, Lcom/android/settingslib/applications/AppUtils;->sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p0}, Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "settingsdebug.instant.packages"

    .line 130
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, ","

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 134
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 135
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 184
    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;-><init>()V

    .line 185
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->isChangedByUser()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2
.end method
