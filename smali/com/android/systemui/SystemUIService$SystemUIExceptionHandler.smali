.class Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;
.super Ljava/lang/Object;
.source "SystemUIService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUIExceptionHandler"
.end annotation


# instance fields
.field private final mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/android/systemui/SystemUIService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/SystemUIService;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/SystemUIService;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/SystemUIService$1;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;-><init>(Lcom/android/systemui/SystemUIService;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-static {v0}, Lcom/android/systemui/SystemUIService;->access$200(Lcom/android/systemui/SystemUIService;)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
