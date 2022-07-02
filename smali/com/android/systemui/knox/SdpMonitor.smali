.class Lcom/android/systemui/knox/SdpMonitor;
.super Ljava/lang/Object;
.source "SdpMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private registerCallback()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/knox/SdpMonitor;->registerCallback()V

    return-void
.end method

.method public isSdpSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
