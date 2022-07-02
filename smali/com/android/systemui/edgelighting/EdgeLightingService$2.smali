.class Lcom/android/systemui/edgelighting/EdgeLightingService$2;
.super Ljava/lang/Object;
.source "EdgeLightingService.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Z)V
    .locals 3

    .line 142
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    .line 143
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdgeLightingObserver: enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$400(Lcom/android/systemui/edgelighting/EdgeLightingService;Z)V

    .line 146
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 147
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->getInstance()Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->updateStatusLoggingItem(Landroid/content/Context;)V

    .line 150
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->updateStatusLoggingItem(Landroid/content/Context;)V

    return-void
.end method
