document.getElementById('load-contracts').addEventListener('click', loadContracts);
document.getElementById('add-contract-form').addEventListener('submit', addContract);

function loadContracts() {
    fetch('http://localhost:3000/api/contracts')
        .then(response => response.json())
        .then(data => {
            const contractsList = document.getElementById('contracts-list');
            contractsList.innerHTML = ''; // Очистка списка перед загрузкой
            data.forEach(contract => {
                const contractItem = document.createElement('div');
                contractItem.textContent = `ID: ${contract.Contract_ID}, Номер: ${contract.Contract_Number}, Сумма: ${contract.Amount}, Статус: ${contract.Status}`;
                contractsList.appendChild(contractItem);
            });
        })
        .catch(error => console.error('Ошибка при загрузке договоров:', error));
}

function addContract(event) {
    event.preventDefault(); // Предотвращаем перезагрузку страницы

    const contractData = {
        Contract_Number: document.getElementById('contract-number').value,
        Date: document.getElementById('date').value,
        Amount: parseFloat(document.getElementById('amount').value),
        Start: document.getElementById('start').value,
        End: document.getElementById('end').value,
        Status: document.getElementById('status').value,
        Counteragent_ID: parseInt(document.getElementById('counteragent-id').value),
        Number: document.getElementById('number').value
    };

    fetch('http://localhost:3000/api/contracts', {
      method: 'POST',
      headers: {
          'Content-Type': 'application/json'
      },
      body: JSON.stringify(contractData)
  })
  .then(response => {
      if (!response.ok) {
          throw new Error('Ошибка при добавлении договора');
      }
      return response.json();
  })
  .then(data => {
      console.log('Договор добавлен с ID:', data.Contract_ID);
      alert('Договор успешно добавлен!');
      document.getElementById('add-contract-form').reset(); // Сброс формы
      loadContracts(); // Обновление списка договоров
  })
  .catch(error => {
      console.error('Ошибка:', error);
      alert('Произошла ошибка при добавлении договора. Пожалуйста, попробуйте еще раз.');
  });
}