.class public Lcom/android/systemui/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field private static sConfigured:Z


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;
    .locals 0

    .line 35
    sput-object p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 35
    sput-boolean p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 118
    new-instance p1, Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 123
    sget-object p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->stopScreenshot()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
