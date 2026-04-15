#!/bin/bash

echo "====== Log & Firewall Report ======"

echo ""
echo "Recent Failed Login Attempts:"
grep "Failed password" /var/log/auth.log | tail -5

echo ""
echo "Firewall Status:"
sudo ufw status

echo ""
echo "Open Ports:"
sudo ss -tuln

echo ""
echo "=================================="
