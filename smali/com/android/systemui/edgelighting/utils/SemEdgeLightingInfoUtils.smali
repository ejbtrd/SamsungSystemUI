.class public Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;
.super Ljava/lang/Object;
.source "SemEdgeLightingInfoUtils.java"


# static fields
.field private static final DEBUG:Z

.field public static EXTRA_KEY_SMALL_ICON:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->DEBUG:Z

    const-string/jumbo v0, "smallIcon"

    .line 27
    sput-object v0, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->EXTRA_KEY_SMALL_ICON:Ljava/lang/String;

    return-void
.end method

.method public static canBubble(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "bubble"

    .line 241
    invoke-static {p0, v1, v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getBoolean(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static equalsText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "tickerText"

    .line 288
    invoke-static {p0, v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    const-string/jumbo v2, "text"

    .line 292
    invoke-static {p0, v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 296
    :cond_3
    invoke-static {p0, v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    const-string/jumbo v2, "subText"

    .line 300
    invoke-static {p0, v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public static getBoolean(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;Z)Z
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getInt(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)I
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static getLong(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)J
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static getParcelable(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s"

    const-string v0, " "

    .line 46
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static hasSmallIcon(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->EXTRA_KEY_SMALL_ICON:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "flag"

    .line 210
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getInt(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSecret(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "noti_visiblity"

    .line 249
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getInt(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemEdgeLightingInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    sget-boolean v1, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "flag="

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flag"

    .line 170
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getInt(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ticker="

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tickerText"

    .line 172
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title="

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "titleText"

    .line 174
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "text="

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "text"

    .line 176
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sub="

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subText"

    .line 178
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",cn="

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "component"

    .line 180
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",cn time="

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "component_time"

    .line 182
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getLong(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",intent="

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "content_intent"

    .line 184
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getParcelable(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
