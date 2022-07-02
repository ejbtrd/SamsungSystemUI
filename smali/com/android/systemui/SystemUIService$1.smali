.class Lcom/android/systemui/SystemUIService$1;
.super Ljava/lang/Object;
.source "SystemUIService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIService;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIService;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitReached(I)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sent too many Binder proxies to uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUIService"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p0, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-static {p0}, Lcom/android/systemui/SystemUIService;->access$100(Lcom/android/systemui/SystemUIService;)Lcom/android/systemui/BinderProxyDumpHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/BinderProxyDumpHelper;->dumpProxyDebugInfo()V

    return-void
.end method
