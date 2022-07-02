.class public Lcom/android/keyguard/KeyguardCarrierViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "KeyguardCarrierViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardInputViewController<",
        "Lcom/android/keyguard/KeyguardCarrierView;",
        ">;"
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field protected final mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

.field private final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field private mIsShowingOwnerCallButton:Z

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOwnerCallButton:Landroid/widget/Button;

.field private final mOwnerInfo:Landroid/widget/TextView;

.field private mOwnerMessage:Ljava/lang/String;

.field private mPhoneState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUnlockButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$ky27xSPHtaAL-g9-aajJ4_AUyqk(Lcom/android/keyguard/KeyguardCarrierViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->lambda$onViewAttached$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mGL_AZS8PuULYoIfJXyDnt_7WHI(Lcom/android/keyguard/KeyguardCarrierViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->lambda$onViewAttached$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    .line 66
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    .line 68
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$1;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 75
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$2;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 403
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierViewController$4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$4;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mContext:Landroid/content/Context;

    .line 113
    iput-object p3, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 114
    iput-object p6, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 115
    iput-object p5, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 117
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardCarrierView;

    sget p2, Lcom/android/systemui/R$id;->carrier_owner_info:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    .line 118
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardCarrierView;

    sget p2, Lcom/android/systemui/R$id;->carrier_owner_call_button:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    .line 119
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardCarrierView;

    sget p2, Lcom/android/systemui/R$id;->carrier_unlock_button:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardCarrierViewController;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardCarrierViewController;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardCarrierViewController;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->isSimStateAbsentAll()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardCarrierViewController;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setCarrierLockPlusInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->registerPhoneStateListener()V

    return-void
.end method

.method private static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 422
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 423
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 424
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "KeyguardCarrierView"

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 340
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 341
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->getKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "i_love_office_tg"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 p0, 0x0

    .line 342
    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 343
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p0

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception p0

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getCarrierLockPlusPassword()[B
    .locals 5

    const-string v0, "KeyguardCarrierView"

    const/4 v1, 0x0

    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->isCarrierLockENCVersion()Z

    move-result v2

    const/16 v3, 0x100

    if-eqz v2, :cond_0

    .line 281
    new-instance v2, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/encwlawp.txt"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {v2, v3, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardCarrierViewController;->decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 284
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v2, "/efs/sec_efs/sktdm_mem/wlawp.txt"

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":"

    .line 287
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 288
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "getCarrierLockPlusPassword(), password is null"

    .line 290
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v2, "getCarrierLockPlusPassword(), IOException!!"

    .line 294
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private getKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "SHA-256"

    .line 332
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const-string v0, "SKT : Find lost phone plus !!!"

    const-string v1, "UTF-8"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 334
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private isCarrierLockENCVersion()Z
    .locals 1

    .line 327
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private isSimStateAbsentAll()Z
    .locals 6

    .line 383
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    .line 384
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, ","

    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimStateAbsentAll() : simSlotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", simStates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KeyguardCarrierView"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p0, :cond_2

    .line 391
    array-length v4, v2

    if-gt v4, v3, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    aget-object v4, v2, v3

    const-string v5, "ABSENT"

    .line 395
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private isSimStateReadyOrLoaded()Z
    .locals 6

    .line 360
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    .line 361
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimStateReadyOrLoaded() : simSlotCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simStates = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardCarrierView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, ","

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_3

    .line 367
    array-length v3, v0

    if-gt v3, v2, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    aget-object v3, v0, v2

    const-string v4, "READY"

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    return v5

    :cond_1
    const-string v4, "LOADED"

    .line 374
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private synthetic lambda$onViewAttached$0(Landroid/view/View;)V
    .locals 3

    .line 164
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "tel"

    const-string v1, "0000"

    const/4 v2, 0x0

    .line 165
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find the component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardCarrierView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$onViewAttached$1(Landroid/view/View;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordSaved(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_0
    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private setCarrierLockPlusInfo()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 230
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->getCarrierLockPlusPassword()[B

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    .line 229
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->updateCarrierLockPlusMessage()V

    return-void
.end method

.method private setEmergencyButtonCallback(Z)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyButtonCallback(Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;)V

    return-void
.end method

.method private setVisibleOwnerCallButton()V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    return-void
.end method

.method private setVisibleOwnerCallButton(Z)V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->isSimStateReadyOrLoaded()Z

    move-result p1

    const/4 v0, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVisibleOwnerCallButton state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CallButton ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSimStateReadyOrLoaded ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardCarrierView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 270
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x8

    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton()V

    .line 243
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateCarrierLockPlusMessage()V
    .locals 5

    const-string v0, "KeyguardCarrierView"

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->isCarrierLockENCVersion()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-eqz v1, :cond_0

    .line 304
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardCarrierViewController;->decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 307
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":"

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 311
    aget-object v2, v1, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    .line 312
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton()V

    .line 313
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 314
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_1
    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerMessage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "updateCarrierLockPlusMessage(), message is null"

    .line 318
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo v1, "updateCarrierLockPlusMessage(), IOException"

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 211
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onPause()V

    .line 212
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->resetState()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 124
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    const/4 v0, 0x1

    .line 126
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setEmergencyButtonCallback(Z)V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/android/keyguard/KeyguardCarrierViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$3;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->registerPhoneStateListener()V

    .line 155
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setCarrierLockPlusInfo()V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 163
    new-instance v1, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 177
    new-instance v1, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setEmergencyButtonCallback(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->unregisterPhoneStateListener()V

    .line 195
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public resetState()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method
