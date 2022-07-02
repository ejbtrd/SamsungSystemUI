.class public Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;
.super Ljava/lang/Thread;
.source "EdgeLightingBRThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;
    }
.end annotation


# static fields
.field public static final PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mExportTime:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field mIntent:Landroid/content/Intent;

.field mLoopEnable:Z

.field private mOption:I

.field private mSecuritylevel:I

.field mSessionKey:Ljava/lang/String;

.field private mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->TAG:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 79
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    .line 77
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 90
    new-instance p1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;-><init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;III)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    return-void
.end method

.method private backupCocktailBarFiles(Ljava/lang/String;)V
    .locals 9

    .line 138
    sget-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->TAG:Ljava/lang/String;

    const-string v1, "Backup Cocktailbar Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    if-nez v1, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/edgelighting/backup/BRUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/edgelighting/backup/BRUtils;->makeCocktailSettingList(Ljava/util/ArrayList;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/edgelighting/backup/Encryption;->streamCrypt(Ljava/lang/String;)V

    .line 149
    new-instance v5, Lcom/android/systemui/edgelighting/backup/GenerateXML;

    invoke-direct {v5, v1}, Lcom/android/systemui/edgelighting/backup/GenerateXML;-><init>(Ljava/util/ArrayList;)V

    .line 150
    invoke-virtual {v5, p1}, Lcom/android/systemui/edgelighting/backup/GenerateXML;->createResultFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "encrypt_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cocktailbar.xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    invoke-static {v1, p1, v0}, Lcom/android/systemui/edgelighting/backup/Encryption;->encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-direct {p0, v4, v4, v4}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    return-void

    .line 152
    :cond_2
    :goto_0
    :try_start_1
    invoke-direct {p0, v3, v2, v4}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    const-string p1, "Backup file size error"

    .line 153
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 166
    invoke-direct {p0, v3, v3, v4}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 162
    invoke-direct {p0, v3, v2, v4}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    .line 163
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private restoreCocktailBarFiles(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/edgelighting/backup/Encryption;->streamCrypt(Ljava/lang/String;)V

    const-string v2, "encrypt_cocktailbar.xml"

    const-string v3, "decrypt_cocktailbar.xml"

    .line 176
    iget v4, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    invoke-static {p1, v2, v3, v4}, Lcom/android/systemui/edgelighting/backup/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/edgelighting/backup/BRUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/edgelighting/backup/BRUtils;->restoreSettingValue(ZLjava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;-><init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    .line 187
    invoke-direct {p0, v1, v1, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    .line 188
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    invoke-direct {p0, v1, v1, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    return-void
.end method

.method private sendResponse(III)V
    .locals 3

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    iget v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_EDGELIGHTING"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mExportTime:Ljava/lang/String;

    const-string v2, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_EDGELIGHTING"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const-string v1, "RESULT"

    .line 209
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ERR_CODE"

    .line 210
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "REQ_SIZE"

    .line 211
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    const-string p2, "SOURCE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public permissionCheck(Landroid/content/Context;)Z
    .locals 4

    .line 240
    sget-object p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->PERMISSIONS:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 241
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public run()V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 96
    sget-object p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->TAG:Ljava/lang/String;

    const-string v0, "intent is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "SAVE_PATH"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v2, "ACTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v4, "SESSION_KEY"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v4, "SOURCE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v4, "SECURITY_LEVEL"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    .line 105
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v4, "EXPORT_SESSION_TIME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mExportTime:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.samsung.android.intent.action.REQUEST_BACKUP_EDGELIGHTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 107
    iput v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGELIGHTING"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iput v4, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    .line 112
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->permissionCheck(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 113
    sget-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->TAG:Ljava/lang/String;

    const-string v1, "Permission fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 114
    invoke-direct {p0, v4, v0, v3}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    return-void

    .line 118
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    const/4 v5, 0x3

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    .line 122
    iput-boolean v4, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    .line 123
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->backupCocktailBarFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_4
    invoke-direct {p0, v4, v5, v3}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    goto :goto_1

    :cond_5
    if-ne v2, v4, :cond_7

    if-nez v1, :cond_6

    .line 129
    iput-boolean v4, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    .line 130
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->restoreCocktailBarFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_6
    invoke-direct {p0, v4, v5, v3}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(III)V

    :cond_7
    :goto_1
    return-void
.end method
