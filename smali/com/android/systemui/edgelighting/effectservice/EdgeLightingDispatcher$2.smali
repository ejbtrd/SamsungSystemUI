.class Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;
.super Landroid/database/ContentObserver;
.source "EdgeLightingDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerSettingChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Landroid/os/Handler;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 358
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$100(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Ljava/lang/String;)V

    return-void
.end method
