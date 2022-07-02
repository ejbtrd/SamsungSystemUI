.class public Lcom/android/systemui/util/NotificationChannels;
.super Lcom/android/systemui/SystemUI;
.source "NotificationChannels.java"


# static fields
.field public static ALERTS:Ljava/lang/String; = "ALR"

.field public static BATTERY:Ljava/lang/String; = "BAT"

.field public static CHARGING:Ljava/lang/String; = "CHR"

.field public static GENERAL:Ljava/lang/String; = "GEN"

.field public static HINTS:Ljava/lang/String; = "HNT"

.field public static LOW_BATTERY:Ljava/lang/String; = "LBAT"

.field public static NEW_LOW_BATTERY:Ljava/lang/String; = "NLBAT"

.field private static NOTIFICATION_CHANNEL_FULL_BATTERY:Ljava/lang/String; = "FBT"

.field public static NO_SIM:Ljava/lang/String; = "NO_SIM"

.field public static OLD_LOW_BATTERY:Ljava/lang/String; = "LBT"

.field public static ONGOING:Ljava/lang/String; = "ONGOING"

.field public static SCREENSHOTS_HEADSUP:Ljava/lang/String; = "SCN_HEADSUP"

.field public static SCREENSHOTS_LEGACY:Ljava/lang/String; = "SCN"

.field public static SEC_LOW_BATTERY:Ljava/lang/String; = "LOWBAT"

.field public static STORAGE:Ljava/lang/String; = "DSK"

.field public static TVPIP:Ljava/lang/String; = "TVPIP"

.field public static ZEN_ONGOING:Ljava/lang/String; = "ZEN_ONGOING"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static createAll(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    .line 67
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 68
    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$string;->notification_channel_battery:I

    .line 69
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v2, v3, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "low_battery_sound"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    .line 74
    invoke-virtual {v5, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/16 v8, 0xa

    .line 75
    invoke-virtual {v5, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 76
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 73
    invoke-virtual {v2, v3, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v3, 0x1

    .line 77
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 80
    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->SEC_LOW_BATTERY:Ljava/lang/String;

    sget v9, Lcom/android/systemui/R$string;->battery_low_sec_noti_channel:I

    .line 81
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v5, v9, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x0

    .line 83
    invoke-virtual {v2, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 86
    new-instance v9, Landroid/app/NotificationChannel;

    sget-object v10, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    sget v11, Lcom/android/systemui/R$string;->notification_channel_alerts:I

    .line 88
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 91
    new-instance v10, Landroid/app/NotificationChannel;

    sget-object v11, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    sget v12, Lcom/android/systemui/R$string;->notification_channel_general:I

    .line 93
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 96
    new-instance v11, Landroid/app/NotificationChannel;

    sget-object v12, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    sget v13, Lcom/android/systemui/R$string;->notification_channel_storage:I

    .line 98
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 99
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v14

    const/4 v15, 0x3

    const/4 v6, 0x2

    if-eqz v14, :cond_0

    move v14, v15

    goto :goto_0

    :cond_0
    move v14, v6

    .line 101
    :goto_0
    invoke-direct {v11, v12, v13, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 103
    new-instance v12, Landroid/app/NotificationChannel;

    sget-object v13, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    sget v14, Lcom/android/systemui/R$string;->notification_channel_hints:I

    .line 105
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 110
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/systemui/util/NotificationChannels;->CHARGING:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v14, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 113
    invoke-virtual {v13, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 118
    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/systemui/util/NotificationChannels;->NO_SIM:Ljava/lang/String;

    sget v7, Lcom/android/systemui/R$string;->no_sim_notification_title:I

    .line 119
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v14, v7, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 121
    invoke-virtual {v4, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    new-array v5, v8, [Landroid/app/NotificationChannel;

    const/4 v7, 0x0

    aput-object v9, v5, v7

    aput-object v10, v5, v3

    aput-object v11, v5, v6

    .line 124
    sget v3, Lcom/android/systemui/R$string;->notification_channel_screenshot:I

    .line 129
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_LEGACY:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 128
    invoke-static {v3, v6}, Lcom/android/systemui/util/NotificationChannels;->createScreenshotChannel(Ljava/lang/String;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object v3

    aput-object v3, v5, v15

    const/4 v3, 0x4

    aput-object v2, v5, v3

    const/4 v2, 0x5

    aput-object v13, v5, v2

    const/4 v2, 0x6

    aput-object v12, v5, v2

    const/4 v2, 0x7

    sget v3, Lcom/android/systemui/R$string;->noti_dnd_channel_name:I

    .line 134
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/NotificationChannels;->createZenChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    aput-object v3, v5, v2

    const/16 v2, 0x8

    sget v3, Lcom/android/systemui/R$string;->notification_channel_ongoing:I

    .line 135
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/NotificationChannels;->createOngoingChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    aput-object v3, v5, v2

    const/16 v2, 0x9

    aput-object v4, v5, v2

    .line 124
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 141
    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 142
    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->OLD_LOW_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 145
    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->LOW_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 146
    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->NEW_LOW_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 151
    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_LEGACY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 156
    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->NOTIFICATION_CHANNEL_FULL_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->NOTIFICATION_CHANNEL_FULL_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$string;->notification_channel_tv_pip:I

    .line 166
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    invoke-direct {v2, v3, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 164
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method

.method static createOngoingChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 219
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->ONGOING:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method static createScreenshotChannel(Ljava/lang/String;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 178
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 181
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x5

    .line 182
    invoke-virtual {p0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p0, 0x1

    .line 183
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p0

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    :cond_0
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_1
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    :cond_2
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    .line 198
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_3
    return-object v0
.end method

.method static createZenChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 208
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->ZEN_ONGOING:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 212
    invoke-virtual {v0, p0, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-object v0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public start()V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    return-void
.end method
