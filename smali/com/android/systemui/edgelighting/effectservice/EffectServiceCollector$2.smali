.class Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;
.super Ljava/lang/Object;
.source "EffectServiceCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;->this$0:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;->this$0:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->access$100(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V

    return-void
.end method
