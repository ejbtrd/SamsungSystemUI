.class public Lcom/android/systemui/edgelighting/utils/TalkBackUtil;
.super Ljava/lang/Object;
.source "TalkBackUtil.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;

.field mIsTalkbackMode:Z

.field private final mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private mTTS:Landroid/speech/tts/TextToSpeech;

.field private mTTSLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mIsTalkbackMode:Z

    .line 35
    new-instance v1, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;-><init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 63
    new-instance p1, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;-><init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;Landroid/os/Handler;)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    .line 72
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 71
    invoke-virtual {v1, v2, v0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->setTalkBackMode()V

    const-string p0, "TalkBackUtils"

    const-string p1, "TalkBackUtil instance create!!"

    .line 76
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->setTalkBackMode()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/utils/TalkBackUtil;
    .locals 1

    .line 80
    sget-object v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    .line 83
    :cond_0
    sget-object p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    return-object p0
.end method

.method private isAccessibilityEnabled()Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStalkBackEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "enabled_accessibility_services"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const-string v0, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    move p1, p0

    :cond_1
    return p1
.end method

.method private setTalkBackMode()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mIsTalkbackMode:Z

    return-void
.end method


# virtual methods
.method public isTalkBackMode()Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mIsTalkbackMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInit(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->setLanguage()V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    const-string p0, "TalkBackUtils"

    const-string p1, "Do not init TTS!!"

    .line 169
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setLanguage()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTSLocale:Ljava/util/Locale;

    .line 175
    iget-object v1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTSLocale:Ljava/util/Locale;

    .line 177
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTSLocale:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1

    .line 178
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public stopTTS()V
    .locals 2

    const-string v0, "TalkBackUtils"

    const-string v1, "TTS stop!!!"

    .line 191
    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 195
    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 196
    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 197
    iput-object v1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method
