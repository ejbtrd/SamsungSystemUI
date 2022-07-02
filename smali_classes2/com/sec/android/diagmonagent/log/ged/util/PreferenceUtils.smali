.class public Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# direct methods
.method public static getCurrentPolicyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "version"

    const-string v1, "0"

    .line 70
    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 193
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 177
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJwtToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "JWT_TOKEN"

    const-string v1, ""

    .line 56
    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastPDUpdatedTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "lastPDUpdatedTime"

    const-wide/16 v1, 0x0

    .line 157
    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNeededPolicyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "needed_version"

    const-string v1, "0"

    .line 77
    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPolicyVersionInfoUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "version_info_url"

    .line 63
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPollingInterval(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "pollingInterval"

    const-string v1, "1"

    .line 84
    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "REST_IDENTIFIER"

    const-string v1, ""

    .line 46
    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initPolicyPreference(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    .line 164
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileValue(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileServiceVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileErrorCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeValue(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeServiceVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeErrorCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileCountValue(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static removeDiagmonPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 203
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeRandomDeviceId(Landroid/content/Context;)V
    .locals 1

    const-string v0, "REST_IDENTIFIER"

    .line 52
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->removeDiagmonPreference(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentPolicyVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "version"

    .line 73
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultMaxFileCount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "maxFileCount"

    .line 94
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultMaxFileSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "maxFileSize"

    .line 101
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultUploadFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uploadFile"

    .line 108
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 197
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 198
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - value is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "DIAGMON_PREFERENCE"

    .line 185
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 186
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 187
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setJwtToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "JWT_TOKEN"

    .line 59
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastPDUpdatedTime(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "lastPDUpdatedTime"

    .line 160
    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setMaxFileCountValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "maxFileCountValue"

    .line 153
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxFileSizeErrorCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "maxFileSizeErrorCode"

    .line 127
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxFileSizeServiceVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "maxFileSizeServiceVersion"

    .line 121
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxFileSizeValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "maxFileSizeValue"

    .line 115
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNeededPolicyVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "needed_version"

    .line 80
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPolicyVersionInfoUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "version_info_url"

    .line 66
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPollingInterval(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pollingInterval"

    .line 87
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRandomDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "REST_IDENTIFIER"

    .line 49
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadFileErrorCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uploadFileErrorCode"

    .line 146
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadFileServiceVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uploadFileServiceVersion"

    .line 140
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadFileValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uploadFileValue"

    .line 134
    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
