.class Landroid/accessibilityservice/UiTestAutomationBridge$1;
.super Ljava/lang/Object;
.source "UiTestAutomationBridge.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/UiTestAutomationBridge;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/UiTestAutomationBridge;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/UiTestAutomationBridge;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :goto_7
    :try_start_7
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    #setter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v0, v2}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$102(Landroid/accessibilityservice/UiTestAutomationBridge;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mWaitingForEventDelivery:Z
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$200(Landroid/accessibilityservice/UiTestAutomationBridge;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_40

    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/UiTestAutomationBridge;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_28
    :try_start_28
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$300(Landroid/accessibilityservice/UiTestAutomationBridge;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    const/4 v2, 0x1

    #setter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z
    invoke-static {v0, v2}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$302(Landroid/accessibilityservice/UiTestAutomationBridge;Z)Z

    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_21

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    :try_start_43
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_40
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_4c} :catch_4d

    goto :goto_7

    :catch_4d
    move-exception v0

    goto :goto_7
.end method

.method public onGesture(I)Z
    .registers 3
    .parameter "gestureId"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onInterrupt()V
    .registers 2

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->onInterrupt()V

    return-void
.end method

.method public onServiceConnected()V
    .registers 1

    .prologue
    return-void
.end method

.method public onSetConnectionId(I)V
    .registers 4
    .parameter "connectionId"

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #setter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I
    invoke-static {v0, p1}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$402(Landroid/accessibilityservice/UiTestAutomationBridge;I)I

    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0
.end method
