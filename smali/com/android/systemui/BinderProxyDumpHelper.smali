.class public Lcom/android/systemui/BinderProxyDumpHelper;
.super Ljava/lang/Object;
.source "BinderProxyDumpHelper.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mDumpManager:Lcom/android/systemui/dump/DumpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/BinderProxyDumpHelper;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v0, "BinderProxyDumpHelper"

    .line 23
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dumpProxyDebugInfo()V
    .locals 0

    return-void
.end method
