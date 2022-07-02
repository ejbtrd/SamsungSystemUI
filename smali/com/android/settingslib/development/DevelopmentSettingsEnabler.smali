.class public Lcom/android/settingslib/development/DevelopmentSettingsEnabler;
.super Ljava/lang/Object;
.source "DevelopmentSettingsEnabler.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->DEBUG:Z

    return-void
.end method

.method public static isDevelopmentSettingsEnabled(Landroid/content/Context;)Z
    .locals 9

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1

    return v3

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDeveloperModeAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    const-string/jumbo v2, "user"

    .line 79
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 82
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "development_settings_enabled"

    .line 80
    invoke-static {p0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v4, 0x1

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :cond_3
    move p0, v3

    :goto_1
    const-string v5, "no_debugging_features"

    .line 83
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    .line 85
    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    .line 88
    sget-boolean v6, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDevelopmentSettingsEnabled() spent time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevelopmentSettingsEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    if-eqz p0, :cond_5

    move v3, v4

    :cond_5
    return v3
.end method
