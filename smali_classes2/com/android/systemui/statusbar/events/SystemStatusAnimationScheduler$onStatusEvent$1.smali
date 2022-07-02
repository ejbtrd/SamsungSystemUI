.class final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemStatusAnimationScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemStatusAnimationScheduler.kt\ncom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,531:1\n1571#2,9:532\n1819#2:541\n1820#2:543\n1580#2:544\n1#3:542\n*E\n*S KotlinDebug\n*F\n+ 1 SystemStatusAnimationScheduler.kt\ncom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1\n*L\n159#1,9:532\n159#1:541\n159#1:543\n159#1:544\n159#1:542\n*E\n"
.end annotation


# instance fields
.field final synthetic $event:Lcom/android/systemui/statusbar/events/StatusEvent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1;->$event:Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getMPrivacyIndicatorListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1;->$event:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 1571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1579
    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$PrivacyIndicatorStateCallBack;

    .line 160
    invoke-interface {p0}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$PrivacyIndicatorStateCallBack;->onCreatePrivacyIndicatorOverlay(Z)V

    .line 161
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1579
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
