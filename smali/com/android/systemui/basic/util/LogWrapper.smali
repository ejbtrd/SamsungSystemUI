.class public Lcom/android/systemui/basic/util/LogWrapper;
.super Ljava/lang/Object;
.source "LogWrapper.java"


# instance fields
.field private MAIN_TAG:Ljava/lang/String;

.field private final mServiceLogger:Lcom/android/systemui/log/SamsungServiceLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->getModuleTag(Lcom/android/systemui/basic/util/ModuleType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/basic/util/LogWrapper;->MAIN_TAG:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/basic/util/LogWrapper;->mServiceLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    return-void
.end method

.method private getModuleTag(Lcom/android/systemui/basic/util/ModuleType;)Ljava/lang/String;
    .locals 0

    .line 30
    sget-object p0, Lcom/android/systemui/basic/util/LogWrapper$1;->$SwitchMap$com$android$systemui$basic$util$ModuleType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const-string p0, "Basic."

    return-object p0

    :cond_0
    const-string p0, "PopupUI."

    return-object p0

    :cond_1
    const-string p0, "[SamsungGlobalActions]"

    return-object p0

    :cond_2
    const-string p0, "SecVolume."

    return-object p0

    :cond_3
    const-string p0, "Navbar."

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->MAIN_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->MAIN_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/systemui/basic/util/LogWrapper;->mServiceLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-eqz v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->MAIN_TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/log/SamsungServiceLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->MAIN_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
