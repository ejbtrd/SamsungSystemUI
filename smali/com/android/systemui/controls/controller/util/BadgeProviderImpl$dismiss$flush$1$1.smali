.class final Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;
.super Ljava/lang/Object;
.source "BadgeProviderImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss$flush-9(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$it:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$it:Ljava/util/Set;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->access$putPackagesSet(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
